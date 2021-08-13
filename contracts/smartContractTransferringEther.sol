//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractTransferringEther {
  function foo(address payable to, uint amount) external {
    to.transfer(amount);
  }

  function bar() external payable {
    msg.value;
    address(this).balance;
  }

  fallback() external {

  }

  receive() external payable {
    
  }
}