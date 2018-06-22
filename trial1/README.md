# Trial 1: ERC 20 Token Contract
## Pre-requisites
   1. install truffle: https://truffleframework.com/
   2. install ganache-cli: https://github.com/trufflesuite/ganache-cli


We will start by using the truffle framework to run and test our smart contracts, and make use of ganache-cli, a Fast Ethereum RPC client for testing and development. We do this so we do not have to deal with transaction times and faucets of the ethereum testnet or mainnet. You are more than welcome to later deploy your smart contracts to either networks, but you do so at your own risk.

## How to run the code
   1. ```truffle compile``` will generate a json interface with which you can interact with your smart contract
   2. In a new terminal running ```ganache-cli``` will start up the ethereum rpc client which will act as your ethereum node
   3. ```truffle migrate``` will migrate the smart contract in to your ethereum rpc client
   4. ```truffle test FILENAMEHERE``` will run whatever tests you have setup for your smart contract. For starters ```truffle test test/ERCtoken.js``` should run some basic tests your first ERC 20 contract needs to meet to be able to work.
 
## The Challenge

   1. There is no transfer function currently implemented in this version of the ERC20token.sol your job is to understand how the ERC 20 token works and implement it. 
   2. The challenge is not meant to be hard, so try to avoid looking at example code of how ERC 20 token currently works. Feel free to use https://solidity.readthedocs.io/en/v0.4.23/contracts.html as a resource.
   3. good luck!

