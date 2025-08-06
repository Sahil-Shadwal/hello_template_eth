# <h1 align="center"> Forge Template </h1>

**Template repository for getting started quickly with Foundry projects**

![Github Actions](https://github.com/foundry-rs/forge-template/workflows/CI/badge.svg)

## Getting Started

Click "Use this template" on [GitHub](https://github.com/foundry-rs/forge-template) to create a new repository with this repo as the initial state.

Or, if your repo already exists, run:

```sh
forge init
forge build
forge test
```

## Writing your first test

All you need is to `import forge-std/Test.sol` and then inherit it from your test contract. Forge-std's Test contract comes with a pre-instatiated [cheatcodes environment](https://book.getfoundry.sh/cheatcodes/), the `vm`. It also has support for [ds-test](https://book.getfoundry.sh/reference/ds-test.html)-style logs and assertions. Finally, it supports Hardhat's [console.log](https://github.com/brockelmore/forge-std/blob/master/src/console.sol). The logging functionalities require `-vvvv`.

```solidity
pragma solidity 0.8.10;

import "forge-std/Test.sol";

contract ContractTest is Test {
    function testExample() public {
        vm.roll(100);
        console.log(1);
        emit log("hi");
        assertTrue(true);
    }
}
```

## Development

This project uses [Foundry](https://getfoundry.sh). See the [book](https://book.getfoundry.sh/getting-started/installation.html) for instructions on how to install and use Foundry.

## Deployed yay

hello_template git:(master) ✗ forge create --rpc-url https://eth-sepolia.g.alchemy.com/v2/ysjEI3jrpE0kY4XOBoN1Q --private-key fba7342ef6879df2c735644c734ea69c140f423d84eb2d53fbdfd53fd5d7c586 src/ShadwalCoin.sol:ShadwalCoin --legacy --broadc
ast
[⠊] Compiling...
No files changed, compilation skipped
Deployer: 0x2966473D85A76A190697B5b9b66b769436EFE8e5
Deployed to: 0x5e6348c3Ea9F6A726e96604d1215B37c75f25192
Transaction hash: 0xaadf4c6dfdd92bfd43fd4bb152926fd3286bf5485301a7afddeeffff6b764e68
➜ hello_template git:(master) ✗ forge create --rpc-url https://eth-sepolia.g.alchemy.com/v2/ysjEI3jrpE0kY4XOBoN1Q --private-key 1d6999d4865e3134a634ba7ae577512a321d87aab10ecb8b0d82a241e468e0df src/ShadwalCoin.sol:ShadwalCoin --legacy --broadcast
[⠊] Compiling...
No files changed, compilation skipped
Deployer: 0x17c085c7a50ABBdC56B3482C4385Bbe92539D8E9
Deployed to: 0xE3dDE969E93a763BC5FC8AFe9F2A4B8e7E1DF9E8
Transaction hash: 0x76fb681a73d247dfea617cf43fa50b715a90dbb49e47efd8d4a60c9283ec8450
➜ hello_template git:(master) ✗
