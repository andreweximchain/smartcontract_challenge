pragma solidity ^0.4.23;

import "./BadBank.sol";
contract BankAttacker {
  address bankAddress;
  /*Constructor for the bank exploit sets up which contract you want to attack, and
  a boolean for whether or not to attack*/
  function BankAttacker(address _bankAddress) {
    bankAddress = _bankAddress;

  }
  function() payable public{
    //TODO
  }
  //Some sample code to get you started
  function deposit() payable public{
    /*address.call.value()(bytes4(keccak256("function_name()"))) is how you
    call other contract functions at the particular address
    */
    if(bankAddress.call.value(msg.value).gas(20764)(bytes4(keccak256("addToBalance()")))
       ==false) {
              throw;
          }
  }
  function withdraw() public{
    //TODO
  }
  //Just a simple getter to look at this contract's eth balance
  function checkBalance() public returns(uint256){
    return address(this).balance;
  }
}
