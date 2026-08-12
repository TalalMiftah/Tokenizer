# TM42 Documentation

## Table of Contents

1. Introduction
2. Project Overview
3. Prerequisites
4. Contract Architecture
5. Token Information
6. Deployment Guide
7. Smart Contract Information
8. Token Usage
9. Owner Functions
10. Project Workflow
11. Deployment Verification
12. Conclusion

---

# 1. Introduction

TM42 is an ERC-20 fungible token developed in Solidity using the OpenZeppelin Contracts library. The project demonstrates how to create, deploy, and interact with a token on the Ethereum blockchain.

The contract is deployed on the **Sepolia Ethereum Testnet**, allowing all functionality to be tested without spending real ETH.

---

# 2. Project Overview

The project consists of a single smart contract named **MyToken**.

The contract inherits functionality from two OpenZeppelin contracts:

* **ERC20** – Implements the ERC-20 token standard.
* **Ownable** – Restricts administrative operations to the contract owner.

The contract provides:

* Standard ERC-20 functionality.
* Owner-controlled token minting.
* Owner-controlled token burning.
* Initial token distribution during deployment.

---

# 3. Prerequisites

Before deploying the contract, the following tools are required:

* Remix IDE
* MetaMask
* A wallet connected to the Sepolia Testnet
* Sepolia ETH for deployment fees
* Solidity Compiler 0.8.27

---

# 4. Contract Architecture

```
                 MyToken
                     │
        ┌────────────┴────────────┐
        │                         │
     ERC20                    Ownable
        │                         │
 Standard Token          Access Control
```

### ERC20

The ERC20 contract provides all standard token operations, including:

* Transfer tokens
* Check balances
* Approve spending
* Transfer using allowances
* Query the total supply

### Ownable

The Ownable contract defines the owner of the contract.

Only the owner can execute administrative functions such as minting and burning tokens.

---

# 5. Token Information

| Property       | Value           |
| -------------- | --------------- |
| Token Name     | Tmiftah42       |
| Symbol         | TM42            |
| Standard       | ERC-20          |
| Network        | Sepolia Testnet |
| Compiler       | Solidity 0.8.27 |
| Decimals       | 18              |
| Initial Supply | 1,000,000 TM42  |
| License        | MIT             |

---

# 6. Deployment Guide

## Remix Configuration

Use the following compiler settings.

| Setting          | Value                        |
| ---------------- | ---------------------------- |
| Compiler Version | 0.8.27                       |
| Optimization     | Enabled                      |
| Runs             | 200                          |
| EVM Version      | Default (Osaka)              |
| Environment      | WalletConnect - MetaMask |

### Deployment Steps

1. Open Remix IDE.
2. Import `MyToken.sol`.
3. Select Solidity compiler version **0.8.27**.
4. Enable compiler optimization.
5. Set **Runs = 200**.
6. Compile the contract.
7. Open **Deploy & Run Transactions**.
8. Select **WalletConnect - MetaMask**.
9. Connect MetaMask to the **Sepolia Testnet**.
10. Enter the owner wallet address as the constructor parameter.
11. Click **Deploy**.
12. Confirm the transaction in MetaMask.
13. Wait until the transaction is mined.

After deployment, the constructor automatically mints **1,000,000 TM42** to the owner's wallet.

---

# 7. Smart Contract Information

**Network**

```text
Sepolia Ethereum Testnet
```

**Contract Address**

```text
0x470f2DaE547202eA2077A2104e545847db5a3aeB
```

**Blockchain Explorer**

```text
https://sepolia.etherscan.io/address/0x470f2DaE547202eA2077A2104e545847db5a3aeB
```

Replace the placeholders above with the deployed contract information.

---

# 8. Token Usage

The contract supports all standard ERC-20 functions.

## Read Information

| Function             | Description                                  |
| -------------------- | -------------------------------------------- |
| `name()`             | Returns the token name.                      |
| `symbol()`           | Returns the token symbol.                    |
| `decimals()`         | Returns the number of decimals (18).         |
| `totalSupply()`      | Returns the total number of existing tokens. |
| `balanceOf(address)` | Returns the balance of an account.           |

---

## Transfer Tokens

```solidity
transfer(address recipient, uint256 amount)
```

Transfers tokens from the caller's account to another account.

---

## Approve Token Spending

```solidity
approve(address spender, uint256 amount)
```

Allows another account to spend tokens on behalf of the caller.

---

## Check Allowance

```solidity
allowance(address owner, address spender)
```

Returns the amount that a spender is allowed to transfer.

---

## Transfer Using an Allowance

```solidity
transferFrom(address from, address to, uint256 amount)
```

Transfers approved tokens from one account to another.

---

# 9. Owner Functions

The following functions can only be executed by the contract owner.

## Mint Tokens

```solidity
mint(address to, uint256 amount)
```

Creates new TM42 tokens and assigns them to the specified address.

Possible use cases include:

* Adding liquidity.
* Rewarding users.
* Supporting future project expansion.
* Funding Web3 applications or blockchain games.

---

## Burn Tokens

```solidity
burn(address from, uint256 amount)
```

Permanently removes tokens from the specified account, reducing the total token supply.

---

# 10. Project Workflow

The following diagram summarizes the token lifecycle.

```
Deploy Contract
        │
        ▼
Constructor Executes
        │
        ▼
Mint 1,000,000 TM42
        │
        ▼
Tokens Assigned to Owner
        │
        ▼
────────────────────────────────────
Users can:
• Transfer tokens
• Approve spenders
• Use transferFrom()
• Check balances
────────────────────────────────────
        │
        ▼
Owner can:
• Mint new tokens
• Burn existing tokens
```

---

# 11. Deployment Verification

After deployment, verify the following:

* Contract deployed successfully.
* Token name is **Tmiftah42**.
* Token symbol is **TM42**.
* Total supply equals **1,000,000 TM42**.
* Owner received the initial supply.
* Token transfers work correctly.
* `approve()` functions correctly.
* `allowance()` returns expected values.
* `transferFrom()` transfers approved tokens.
* Only the owner can call `mint()`.
* Only the owner can call `burn()`.

---

# 12. Conclusion

This project demonstrates the implementation of an ERC-20 token using OpenZeppelin Contracts and Solidity. The token is deployed on the Sepolia Ethereum Testnet and supports all standard ERC-20 operations together with owner-controlled minting and burning. This documentation provides the information required to understand the project, deploy the contract, and interact with the token after deployment.
