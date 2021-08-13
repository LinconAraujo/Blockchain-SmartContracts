//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsModifiers {

  address admin;

  function foo(uint arg) external myModifier1(arg) myModifier2(arg) {
    // ...
  }

  function bar() external onlyAdmin() {
    // ...
  }

  modifier myModifier1(uint arg) {
    require(arg == 10, 'rola um erro aqui');
    _;
  }

  modifier myModifier2(uint arg) {
    require(arg == 20, 'aqui tbm rola um erro');
    _;
  }

  modifier onlyAdmin() {
    require(msg.sender == admin, 'only admin');
    _;
  }
}