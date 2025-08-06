// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ShadwalCoin is ERC20 {
    address owner;
    constructor() ERC20("Shadwal","SHD") {
        //mint myself 1000 tokens
        _mint(msg.sender, 1000 * 10 ** 18); // Initial value of 1000 tokens with 18 decimals
        owner = msg.sender;
    }
    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only owner can mint tokens");
        _mint(to, amount);
    }
}
// 1d6999d4865e3134a634ba7ae577512a321d87aab10ecb8b0d82a241e468e0df

// https://eth-sepolia.g.alchemy.com/v2/ysjEI3jrpE0kY4XOBoN1Q