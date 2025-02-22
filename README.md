# Decentralised-Finance-Web-App
<img width="557" alt="Screenshot 2025-02-22 at 11 30 15 AM" src="https://github.com/user-attachments/assets/a8f959b2-e205-457a-bee3-9cfd3885e24a" />



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

