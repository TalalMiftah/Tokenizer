# Deployment Guide

This document describes the deployment process of the **Tmiftah42 (TM42)** ERC-20 token on the Sepolia Ethereum Testnet.

---

# Deployment Information

| Property     | Value           |
| ------------ | --------------- |
| Token Name   | Tmiftah42       |
| Symbol       | TM42            |
| Standard     | ERC-20          |
| Network      | Sepolia Testnet |
| Compiler     | Solidity 0.8.27 |
| License      | MIT             |
| Optimization | Enabled         |
| Runs         | 200             |
| EVM Version  | Default (Osaka) |

## The deployment was performed using **Remix IDE** with **MetaMask** connected to the Sepolia network.

# Smart Contract

**Contract Address**

```text
0x470f2DaE547202eA2077A2104e545847db5a3aeB
```

**Blockchain Explorer**

```text
https://sepolia.etherscan.io/address/0x470f2DaE547202eA2077A2104e545847db5a3aeB
```

---

# Constructor Parameters

The constructor receives the owner address and initializes the token metadata.

```solidity
constructor(address owner)
```

During deployment, the constructor mints the initial supply to the owner's account.

**Initial Supply**

```text
1,000,000 × 10¹⁸
```

This corresponds to:

```text
1,000,000 TM42
```

since the token uses the default **18 decimals** inherited from OpenZeppelin.

---

# Remix Configuration

Use the following settings before deployment.

| Setting      | Value                        |
| ------------ | ---------------------------- |
| Compiler     | 0.8.27                       |
| Optimization | Enabled                      |
| Runs         | 200                          |
| EVM Version  | Default (Osaka)              |
| Environment  | WalletConnect (MetaMask) |

## These settings match the ones used during deployment.

# Deployment Steps

1. Open Remix IDE.
2. Import `MyToken.sol`.
3. Compile using Solidity **0.8.27**.
4. Open **Deploy & Run Transactions**.
5. Select **WalletConnect – MetaMask**.
6. Ensure MetaMask is connected to the **Sepolia** network.
7. Provide the owner address as the constructor argument.
8. Deploy the contract.
9. Wait for transaction confirmation.
10. Copy the deployed contract address.
11. Open the contract on Sepolia Etherscan and verify that it was deployed successfully.

---

# Post-Deployment Verification

After deployment, verify the following:

* Token name
* Symbol
* Decimals
* Total supply
* Owner
* Token transfers
* `approve()`
* `allowance()`
* `transferFrom()`

---

# Why Sepolia?

The contract was deployed on the **Sepolia Ethereum Testnet** because it provides a simple and accessible environment for development and testing.

Compared to the BNB Smart Chain testnet, where obtaining test BNB may require meeting faucet conditions, Sepolia offers publicly available faucets that make acquiring test ETH straightforward. This allows contracts to be deployed and tested without spending real ETH.

---

# Repository Requirement

As required by the project, this repository includes:

* The blockchain network used (**Sepolia Testnet**).
* The deployed smart contract address.
* A link to the contract on the blockchain explorer.
