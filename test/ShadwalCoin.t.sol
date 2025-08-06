// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/ShadwalCoin.sol";

contract TestShadwalCoin is Test {
    ShadwalCoin c;

    function setupTest() public {
        c = new ShadwalCoin(1000 * 10 ** 18); // Initial value of 1000 tokens with 18 decimals
    } 

    function testSimple() public {
        assertEq(uint(2), uint(2), "ok");
    }


}
