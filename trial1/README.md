# Trial 1: ERC 20 Token Contract
## Pre-requisites
   1. install npm/node https://nodejs.org/en/download/
   2. install truffle: https://truffleframework.com/
   3. install ganache-cli: https://github.com/trufflesuite/ganache-cli


We will start by using the truffle framework to run and test our smart contracts, and make use of ganache-cli, a Fast Ethereum RPC client for testing and development. We do this so we do not have to deal with transaction times and faucets of the ethereum testnet or mainnet. You are more than welcome to later deploy your smart contracts to either networks, but you do so at your own risk.

## How to run the code
   1. ```truffle compile``` will generate a json interface with which you can interact with your smart contract
   2. In a new terminal running ```ganache-cli``` will start up the ethereum rpc client which will act as your ethereum node
   3. ```truffle migrate``` will migrate the smart contract in to your ethereum rpc client
   4. ```truffle test FILENAMEHERE``` will run whatever tests you have setup for your smart contract. For starters ```truffle test test/ERCtoken.js``` should run some basic tests your first ERC 20 contract needs to meet to be able to work. If you are successful the following should be your output
   ```
   Using network 'development'.

Compiling ./contracts/EIP20Interface.sol...
Compiling ./contracts/ERC20Token.sol...

Compilation warnings encountered:

/Users/Koji/smartcontract_challenge/trial1/contracts/ERC20Token.sol:26:5: Warning: Defining constructors as functions with the same name as the contract is deprecated. Use "constructor(...) { ... }" instead.
    function ERC20Token(
    ^ (Relevant source part starts here and spans across multiple lines).
,/Users/Koji/smartcontract_challenge/trial1/contracts/ERC20Token.sol:39:23: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transfer(address _to, uint256 _value) public returns (bool success) {
                      ^---------^
,/Users/Koji/smartcontract_challenge/trial1/contracts/ERC20Token.sol:39:36: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function transfer(address _to, uint256 _value) public returns (bool success) {
                                   ^------------^



  Contract: ERC20Token
BigNumber { s: 1, e: 4, c: [ 10000 ] }
    ✓ creation: should create an initial balance of 10000 for the creator
    ✓ creation: test correct setting of vanity information (49ms)
    ✓ creation: should succeed in creating over 2^256 - 1 (max) tokens (126ms)
    ✓ transfers: ether transfer should be reversed. (38ms)
    1) transfers: should transfer 10000 to accounts[1] with accounts[0] having 10000
    > No events were emitted
    2) transfers: should fail when trying to transfer 10001 to accounts[1] with accounts[0] having 10000
    > No events were emitted
    ✓ transfers: should handle zero-transfers normally
    ✓ approvals: msg.sender should approve 100 to accounts[1] (47ms)
    ✓ approvals: msg.sender approves accounts[1] of 100 & withdraws 20 once. (203ms)
    ✓ approvals: msg.sender approves accounts[1] of 100 & withdraws 20 twice. (208ms)
    ✓ approvals: msg.sender approves accounts[1] of 100 & withdraws 50 & 60 (2nd tx should fail) (128ms)
    ✓ approvals: attempt withdrawal from account with no allowance (should fail)
    ✓ approvals: allow accounts[1] 100 to withdraw from accounts[0]. Withdraw 60 and then approve 0 & attempt transfer. (97ms)
    ✓ approvals: approve max (2^256 - 1) (42ms)
    ✓ approvals: msg.sender approves accounts[1] of max (2^256 - 1) & withdraws 20 (111ms)
    3) events: should fire Transfer event properly
    > No events were emitted
    4) events: should fire Transfer event normally on a zero transfer
    > No events were emitted
    ✓ events: should fire Approval event properly


  14 passing (2s)
  4 failing

  1) Contract: ERC20Token
       transfers: should transfer 10000 to accounts[1] with accounts[0] having 10000:

      AssertionError: expected 0 to equal 10000
      + expected - actual

      -0
      +10000
      
      at Context.it (test/ERCtoken.js:56:12)
      at <anonymous>
      at process._tickCallback (internal/process/next_tick.js:118:7)

  2) Contract: ERC20Token
       transfers: should fail when trying to transfer 10001 to accounts[1] with accounts[0] having 10000:
     AssertionError: assert.fail()
      at assertRevert (test/helpers/assertRevert.js:10:12)
      at <anonymous>
      at process._tickCallback (internal/process/next_tick.js:118:7)

  3) Contract: ERC20Token
       events: should fire Transfer event properly:
     TypeError: Cannot read property 'args' of undefined
      at Context.it (test/ERCtoken.js:191:36)
      at <anonymous>
      at process._tickCallback (internal/process/next_tick.js:118:7)

  4) Contract: ERC20Token
       events: should fire Transfer event normally on a zero transfer:
     TypeError: Cannot read property 'args' of undefined
      at Context.it (test/ERCtoken.js:199:36)
      at <anonymous>
      at process._tickCallback (internal/process/next_tick.js:118:7)


   ```
 
## The Challenge

   1. There is no transfer function currently implemented in this version of the ERC20token.sol your job is to understand how the ERC 20 token works and implement it. 
   2. The challenge is not meant to be hard, so try to avoid looking at example code of how ERC 20 token contracts currently work. Feel free to use https://solidity.readthedocs.io/en/v0.4.23/contracts.html as a resource.
   3. good luck!

