import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";
import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";
import Text "mo:base/Text";

actor ValutX {
    stable var currentValue: Float = 300;
    stable var startTime: Time.Time = Time.now();
    stable var users: [Principal] = []; 

    //using StableHashMaps instead of HashMap for stable variables
    var userBalances = HashMap.HashMap<Principal, Float>(10, Principal.equal, Principal.hash);
    var transactionHistory = HashMap.HashMap<Principal, [(Text, Float, Time.Time)]>(10, Principal.equal, Principal.hash);
    var userPINs = HashMap.HashMap<Principal, Text>(10, Principal.equal, Principal.hash);
    var userRoles = HashMap.HashMap<Principal, Text>(10, Principal.equal, Principal.hash);

    public func compound() {
        let currentTime = Time.now();
        let timeElapse = currentTime - startTime;
        let timeElapseS = timeElapse / 1_000_000_000; 
        currentValue *= (1.01 ** Float.fromInt(timeElapseS)); 
        startTime := currentTime; 
        Debug.print(debug_show(currentValue));
    };

    public func topUp(amount: Float) {
        currentValue += amount;
        Debug.print(debug_show(currentValue));
    };

    public func setPIN(user: Principal, pin: Text) {
        userPINs.put(user, pin); // Store PIN for user
    };

    public func verifyPIN(user: Principal, pin: Text) : async Bool {
        switch (userPINs.get(user)) {
            case (?storedPIN) { storedPIN == pin };
            case null { false }; 
        }
    };

    public func withdraw(amount: Float, user: Principal, pin: Text) {
        if (await verifyPIN(user, pin)) {
            let withdrawalFee: Float = 5.0; 
            let totalAmount: Float = amount + withdrawalFee;
            if (currentValue >= totalAmount) {
                currentValue -= totalAmount;
                Debug.print(debug_show(currentValue));

                let timestamp = Time.now();
                let history = switch (transactionHistory.get(user)) {
                    case (?h) h;
                    case null [] ;
                };
                transactionHistory.put(user, history # [(Text.concat("Withdraw ", Float.toText(amount)), totalAmount, timestamp)]);
            } else {
                Debug.print("Error: Insufficient funds for withdrawal including fee.");
            }
        } else {
            Debug.print("Error: Invalid PIN.");
        }
    };

    public query func checkBalance(user: Principal): async Float {
        switch (userBalances.get(user)) {
            case (?balance) balance;
            case null { 0.0 }; 
        }
    };

    public func setInterestRate(user: Principal, rate: Float, adminPin: Text) {
        if (await verifyPIN(user, adminPin) and (userRoles.get(user) == ?"admin")) {
            Debug.print(debug_show(rate));
        } else {
            Debug.print("Error: Only admin can set interest rate or invalid admin PIN.");
        }
    };

    public func addUser(user: Principal, role: Text) {
        users := users # [user];
        userBalances.put(user, 0.0); 
        userRoles.put(user, role); 
    };

    public query func getTransactionHistory(user: Principal): async [(Text, Float, Time.Time)] {
        switch (transactionHistory.get(user)) {
            case (?history) history;
            case null { [] }; 
        }
    };
}


