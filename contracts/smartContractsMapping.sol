//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsMapping {
  // 1. Declare mappings
  // 2. C.R.U.D
  // 3. Default values
  // 4. exotic mapping 1: nested mappings
  // 5. exotic mapping 2: array inside mapping

  // 1. Declare mappings
  mapping(address => uint) balances;
  mapping(address => mapping(address => bool)) approved;
  mapping(address => uint[]) scores;

  function foo() external {
    // C
    balances[msg.sender] = 100;
    // R
    balances[msg.sender];
    // U
    balances[msg.sender] = 200;
    // D
    delete balances[msg.sender];

    // 3. Default values
    // balances[someAddressThatDoNotExist] = 0;
  }

  // 4. exotic mapping 1: nested mappings
  function bar(address spender) external {
    // C
    approved[msg.sender][spender] = true;
    // R
    approved[msg.sender][spender];
    // U
    approved[msg.sender][spender] = false;
    // D
    delete approved[msg.sender][spender];
  }

  // 5. exotic mapping 2: array inside mapping
  function fooBar() external {
    scores[msg.sender]= new uint[](2); // DO NOT USE

    // C
    scores[msg.sender].push(1);
    scores[msg.sender].push(2);
    // R
    scores[msg.sender][0];
    // U
    scores[msg.sender][0] = 10;
    // D
    delete scores[msg.sender];
  }
}