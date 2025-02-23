# ValutX (Version 2) – A Decentralized DeFi Vault
<p>ValutX is a next-generation Decentralized Finance (DeFi) Vault built on Motoko and the Internet Computer Protocol (ICP). It offers multi-user financial management with PIN-protected transactions, compounding interest, and role-based access control, redefining secure, transparent, and automated banking in a decentralized ecosystem.</p>

# Why DeFi? 
<p>Decentralized Finance (DeFi) is reshaping traditional banking by eliminating intermediaries, reducing fees, and enhancing financial accessibility. Built on blockchain technology, DeFi platforms like ValutX empower users with full control over their assets, ensuring security, transparency, and autonomy. </p>

- <img width="268" alt="valutX" src="https://github.com/user-attachments/assets/2e312d84-d805-45b6-b748-4718790ce0fe" />

## Key features
####  Multi-User Secure Vault
#### Personalized User Accounts
#### PIN-Protected Transactions
#### Transparent Transaction History
#### Smart Compounding Interest
#### Role-Based Access Control
#### Withdrawal with Fees
#### Seamless User Management

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

