pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract token_42 is ERC20 {
    constructor(uint256 initialSupply) ERC20("token_42", "T42") {
        _mint(msg.sender, initialSupply);
    }
}