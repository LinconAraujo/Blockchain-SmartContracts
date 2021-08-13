//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import './SmartContractsInheritanceParent.sol';

contract SmartContractsInheritanceChild is SmartContractsInheritanceParent {
  
  constructor(uint initialData) SmartContractsInheritanceParent(initialData) {
  }

  function bar() external {
    data++;
  }

  function fooBar() view external returns(uint) {
    return data;
  }
}