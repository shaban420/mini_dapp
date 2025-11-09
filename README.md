# 📝 Blockchain Task Manager dApp

A decentralized application (dApp) for managing tasks on the Ethereum blockchain using Solidity smart contracts and Web3 technology.

## 📋 Project Overview

This project is a mini dApp created for **MG3012 - Blockchain Technology for Business** course. It demonstrates the integration of a Solidity smart contract with a web-based frontend using HTML, CSS, and JavaScript.

### Features
- ✅ Add tasks to the blockchain
- ✅ Mark tasks as completed
- ✅ View all tasks
- ✅ Real-time task count
- ✅ MetaMask wallet integration
- ✅ Deployed on Sepolia testnet

## 🛠️ Technology Stack

- **Smart Contract**: Solidity ^0.8.0
- **Frontend**: HTML5, CSS3, JavaScript
- **Web3 Library**: ethers.js v6.7.0
- **Wallet**: MetaMask
- **Network**: Sepolia Testnet
- **IDE**: Remix IDE

## 📁 Project Structure

```
blockchain-task-manager/
├── Task_Manager.sol        # Smart contract source code
├── index.html              # Main HTML file with JavaScript
├── style.css               # CSS styling file
├── README.md               # Project documentation
└── screenshots/            # Screenshots folder
    ├── 1-contract-deployment.png
    ├── 2-metamask-connection.png
    └── 3-transaction.png
```

## 🚀 Smart Contract Functions

### Write Functions (State-Changing)
1. **add_task(string _text)** - Adds a new task to the blockchain
2. **complete_task(uint256 _task_id)** - Marks a task as completed

### Read Functions (View-Only)
3. **get_task_count()** - Returns total number of tasks
4. **get_task(uint256 _task_id)** - Returns details of a specific task (text and completion status)

### Data Structure
- **task struct**: Contains `text` (string) and `is_done` (bool)
- **all_tasks array**: Stores all tasks publicly accessible

### Events
- **task_added**: Emitted when a new task is created
- **task_completed**: Emitted when a task is marked complete

## 📦 Installation & Setup

### Prerequisites
- [MetaMask](https://metamask.io/) browser extension installed
- Sepolia testnet ETH (get from [Sepolia Faucet](https://faucet.sepolia.dev/))
- Modern web browser (Chrome, Firefox, Brave)

### Step 1: Smart Contract (Already Deployed!)

The contract is already deployed on Sepolia testnet:
- **Contract Address**: `0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8`
- **Network**: Sepolia Testnet
- **View on Etherscan**: [https://sepolia.etherscan.io/address/0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8](https://sepolia.etherscan.io/address/0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8)

### Step 2: Configure Frontend

1. Download or clone this repository
2. Open `index.html` in a text editor
3. Verify the contract address is set correctly:
   ```javascript
   const CONTRACT_ADDRESS = "0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8";
   ```
4. Update the ABI to match the simplified contract:
   ```javascript
   const CONTRACT_ABI = [
       "function add_task(string memory _text) public",
       "function complete_task(uint256 _task_id) public",
       "function get_task_count() public view returns (uint256)",
       "function get_task(uint256 _task_id) public view returns (string memory text, bool is_done)",
       "event task_added(uint256 task_id, string text)",
       "event task_completed(uint256 task_id)"
   ];
   ```
5. Save the file

### Step 3: Run the Application

1. Open `index.html` in a web browser (double-click the file)
2. Click "Connect MetaMask" button
3. Approve the connection in MetaMask
4. Start creating and managing tasks!

## 🎯 Usage Guide

### Connecting Wallet
1. Click the **"Connect MetaMask"** button
2. Approve the connection request in MetaMask popup
3. Your account address will be displayed

### Adding a Task
1. Enter task description in the input field
2. Click **"Add Task"** button
3. Confirm the transaction in MetaMask (gas fees apply)
4. Wait for transaction confirmation
5. Task will be added to the blockchain

### Completing a Task
1. View all tasks using the task ID
2. Click **"Mark Complete"** button for the desired task
3. Confirm the transaction in MetaMask
4. Task status will update to "✅ Completed"

### Viewing Tasks
- The dApp displays total task count
- You can view individual tasks by their ID
- Task structure shows: text content and completion status

## 🔗 Deployed Contract Information

- **Network**: Sepolia Testnet
- **Contract Address**: `0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8`
- **Etherscan Link**: [View on Sepolia Etherscan](https://sepolia.etherscan.io/address/0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8)
- **Contract Name**: Task_Manager
- **Compiler Version**: Solidity ^0.8.0

## 🧪 Testing

To test the dApp:
1. Ensure you have Sepolia testnet ETH in your MetaMask wallet
2. Connect MetaMask to the dApp
3. Add multiple tasks with different descriptions
4. Complete some tasks using their task IDs
5. View task count and individual task details
6. Verify all transactions on [Sepolia Etherscan](https://sepolia.etherscan.io/address/0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8)

## 📚 HTML Elements Used

- ✅ Headings (`<h1>`, `<h2>`, `<h3>`)
- ✅ Paragraphs (`<p>`)
- ✅ Lists (`<ul>`, `<li>`)
- ✅ Links (`<a>`)
- ✅ Buttons (`<button>`)
- ✅ Images (`<img>`)
- ✅ Script tags (`<script>`)
- ✅ Divs (`<div>`)
- ✅ Input fields (`<input>`)

## 🎨 Styling

The project uses custom CSS with:
- Modern gradient backgrounds
- Responsive card layouts
- Hover effects and smooth transitions
- Mobile-friendly responsive design
- Color-coded status indicators
- Clean and intuitive user interface

## 🔧 Contract Simplifications

This version uses a simplified contract structure:
- **Removed owner tracking** - Any user can complete any task
- **Removed timestamps** - Focuses on core functionality
- **Simplified task structure** - Only text and completion status
- **Public array access** - Tasks can be accessed directly via `all_tasks[id]`
- **Global task list** - All users share the same task list

## ⚠️ Important Notes

- Always use Sepolia Testnet (never mainnet for testing)
- Keep your MetaMask seed phrase secure
- Gas fees required for `add_task` and `complete_task` operations
- Read operations (`get_task_count`, `get_task`) are free
- All transactions are permanent and irreversible
- Anyone can complete any task in this version (no ownership restrictions)

## 🐛 Troubleshooting

**MetaMask not connecting?**
- Ensure MetaMask is installed and unlocked
- Check you're on Sepolia Testnet
- Refresh the page and try again

**Transaction failing?**
- Check you have enough Sepolia ETH for gas fees
- Verify contract address is: `0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8`
- Ensure MetaMask is connected to Sepolia network

**Tasks not loading?**
- Click "Refresh Tasks" button
- Check browser console (F12) for errors
- Verify you're connected with MetaMask
- Ensure contract address is correct in `index.html`

**"Invalid task ID" error?**
- Task IDs start from 0
- Check total task count before accessing
- Ensure the task ID exists









**Contract Address**: `0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8`  
**Network**: Sepolia Testnet  

**Built with**: Solidity, HTML, CSS, JavaScript, ethers.js, MetaMask
