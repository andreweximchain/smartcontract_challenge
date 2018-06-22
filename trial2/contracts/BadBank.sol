pragma solidity ^0.4.23;

contract BadBank {
  //provides eth balance mappings
  address public owner;
  mapping(address => uint256) public balances;
  //Constructor
  function constructor() payable public{
    owner = msg.sender;
  }
  //returns user balances
  function getUserBalance(address user) constant public returns(uint) {
    return balances[user];
  }
  //adds whatever balance to the account
  function addToBalance() payable public returns(bool){
    balances[msg.sender] = balances[msg.sender] + msg.value;
    return true;
  }
  //Simple getter function to check the ethereum balance of the contract
  function checkBalance() public returns(uint256) {
    return address(this).balance;
  }
  //problem function!!!
  function withdrawBalance() public returns(bool){
    uint amountToWithdraw = balances[msg.sender];
    if(msg.sender.call.value(amountToWithdraw)()==false) {
        throw;
    }
    balances[msg.sender] = 0;
    return true;
  }

}
