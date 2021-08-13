//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsInheritanceParent {

  uint data;

  constructor(uint initialData) {
    data = initialData;
  }

  function foo() internal {}
}