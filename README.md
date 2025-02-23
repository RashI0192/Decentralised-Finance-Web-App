# ValutX (Version 2) – A Decentralized DeFi Vault
<p>ValutX is a next-generation Decentralized Finance (DeFi) Vault built on Motoko and the Internet Computer Protocol (ICP). It offers multi-user financial management with PIN-protected transactions, compounding interest, and role-based access control, redefining secure, transparent, and automated banking in a decentralized ecosystem.</p>

# Why DeFi? 
<p>Decentralized Finance (DeFi) is reshaping traditional banking by eliminating intermediaries, reducing fees, and enhancing financial accessibility. Built on blockchain technology, DeFi platforms like ValutX empower users with full control over their assets, ensuring security, transparency, and autonomy. </p>

## Key features
####  Multi-User Secure Vault
- Supports multiple users with PIN-based authentication, ensuring robust security for financial transactions.

#### Personalized User Accounts
- Each user has a dedicated account balance, securely stored in a decentralized hash map.

#### PIN-Protected Transactions
- Implements PIN verification to safeguard withdrawals and prevent unauthorized access.

#### Transparent Transaction History
- Users can access their detailed transaction logs, enhancing financial transparency.

#### Smart Compounding Interest
- Dynamically grows funds over time using an automated compound interest mechanism.

#### Role-Based Access Control
- Differentiates between admins and regular users, allowing admins to set interest rates and manage the system.

#### Withdrawal with Fees
- Ensures sustainable fund management by applying a fixed withdrawal fee to each transaction.

#### Seamless User Management
- Allows new user registration with role assignments for better account handling.

## Technologies Used

### Backend:
- Motoko – Smart contract programming language for ICP.
### Frontend:
- JavaScript – Frontend logic and integration.
- CSS – Styling for a user-friendly interface.
- HTML – Structuring the web interface.


### Instructions to deploy the project :
#### Prerequisites:
- Ensure you have the following installed:
- Dfinity SDK (dfx)
- Node.js and npm

#### Step 1: Clone the the Repository
```sh
git clone https://github.com/RashI0192/Decentralised-Finance-Web-App.git
cd Decentralised-Finance-Web-App
cd hello
```
#### Step 2: Start the Local Replica
```sh
dfx start
```
#### Step 3: Deploy the Canisters
- Open a new terminal window and run:

```sh
dfx deploy
```
#### Step 4: Start the Frontend

```sh
npm start
````
### Troubleshooting
##### Dependency Conflicts
- Ensure your dependencies are compatible. If you encounter errors like ERESOLVE unable to resolve dependency tree,try:
```sh
npm install webpack@latest --save-dev
npm install webpack-cli@latest --save-dev --legacy-peer-deps
```
##### Fixing Corrupted dfx State
- If dfx start gives errors or behaves unexpectedly, reset the .dfx directory:
``` sh
dfx stop
rm -rf .dfx
dfx start
```

