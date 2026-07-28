pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract token_42 is ERC20 {
    string public name = "42 Token";
    string public symbol = "42T";
    uint8 public decimals = 18;
}