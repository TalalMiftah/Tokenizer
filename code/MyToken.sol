// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.6.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/* this is a simple token contract */
contract MyToken is ERC20, Ownable {
    constructor(address owner) ERC20("Tmiftah42", "TM42") Ownable(owner) {
        _mint(owner, 1000000 * 10 ** decimals());
    }
    function mint(address to, uint256 amount) external onlyOwner { 
        /* this implementation was mainly for controle inflation by the contract owner incase he wants to increase the supply */
        _mint(to, amount);
    }
    function burn(address from, uint256 amount) external onlyOwner {
        /* this implementation was mainly for controle deflation by the contract owner incase he wants to decrease the supply */
        _burn(from, amount);
    }
}
