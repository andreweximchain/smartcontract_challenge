# Trial 2: The Not So Obvious Bug
## Pre-requisites
   1. The same as in trial 1

## How to run the code
   1. ```truffle compile``` will generate a json interface with which you can interact with your smart contract
   2. In a new terminal running ```ganache-cli``` will start up the ethereum rpc client which will act as your ethereum node
   3. ```truffle migrate``` will migrate the smart contract in to your ethereum rpc client
   4. ```truffle test FILENAMEHERE``` will run whatever tests you have setup for your smart contract. For this challenge I will not provide a test file but feel free to use the trial 1 test files as a reference.

## The Challenge

   1. There is a nefarious bug in this contract! It has to do with how fallback functions work. See if you can find it!
   2. For this challenge your job is to write a smart contract that can exploit the bug in BadBank.sol
   3. There is some skeleton code already written for you in BankAttacker.sol. Try your best to fill in the blanks but if you can't I have already written up the the exploit in BankExploit.sol. You can even test to see that the exploit runs by using ```truffle test test/BankExploit.js```
