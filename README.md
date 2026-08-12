# Tmiftah42 Token

## Overview

**Tmiftah42** is a fungible token implemented using the **ERC-20** standard and deployed on the **Sepolia Ethereum testnet**. The project was designed to provide a simple, standards-compliant token while following established OpenZeppelin practices.

---

# Design Choices

## Why ERC-20?

The ERC-20 standard was selected because it is the most widely adopted standard for fungible tokens on Ethereum. It provides a well-defined interface that is supported by wallets, block explorers, decentralized applications, and development tools.

Using ERC-20 also avoids implementing common token functionality from scratch, reducing complexity and improving compatibility.

---

## Why OpenZeppelin's ERC20 Implementation?

Instead of implementing the ERC-20 standard manually, the contract inherits from OpenZeppelin's `ERC20` contract.

This approach was chosen because OpenZeppelin provides:

* A battle-tested implementation.
* Compliance with the ERC-20 specification.
* Reduced development time.
* Fewer opportunities for implementation errors.

Inheritance allows the contract to reuse the standard functionality while keeping the source code concise and easier to maintain.

---

## Constructor Design

The contract initializes the token through its constructor.

During deployment, the constructor:

1. Initializes the token metadata.
2. Calls the internal `_mint()` function to create the initial token supply.

Creating the supply during deployment guarantees that the total supply exists immediately after the contract is deployed.

---

## Token Name

The token name is:

```
Tmiftah42
```

The name combines my family name (**Tmiftah**) with **42**, referencing the 42 programming school because this was required by the subject.

---

### Token Supply

Upon deployment, the contract mints an initial supply of **1,000,000 TM42** tokens to the contract owner.

Although the initial supply is 1,000,000 tokens, the contract also exposes an owner-only `mint()` function. This allows additional tokens to be created in the future if the project requires them.

This design was chosen to provide flexibility for future development. For example, additional tokens could be minted to:

* Provide liquidity for decentralized exchanges.
* Reward players or participants in a Web3 application or blockchain game.
* Support ecosystem growth, partnerships, or promotional campaigns.

To prevent unauthorized inflation, only the contract owner can call the `mint()` function.

---


## Why Sepolia?

The contract was deployed on the **Sepolia** Ethereum testnet.

Sepolia was chosen for the following reasons:

* It is the recommended Ethereum test network for development.
* Test ETH is easy to obtain from public faucets.
* Several faucets distribute Sepolia ETH without requiring existing funds.
* Development and testing can be performed without spending real ETH.

An alternative considered was the BNB Smart Chain testnet. However, obtaining test BNB typically required holding approximately **0.002 BNB**, making onboarding less convenient. Sepolia offered a simpler and more accessible development environment.

---

# Contract Summary

| Property          | Value                       |
| ----------------- | --------------------------- |
| Token Standard    | ERC-20                      |
| Token Name        | Tmiftah42                   |
| Network           | Sepolia Testnet             |
| Initial Supply    | 1,000,000 Tokens            |
| Supply Creation   | Minted during deployment    |
| Implementation    | OpenZeppelin ERC20          |
| Deployment Method | Constructor calls `_mint()` |

---

# Conclusion

The primary objective of this project was to build a simple, standards-compliant ERC-20 token using well-established Ethereum development practices.

The design emphasizes simplicity, compatibility, and reliability by leveraging OpenZeppelin's audited implementation, deploying on the Sepolia test network, and creating the complete token supply during deployment.
