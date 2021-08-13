// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract MyContract {
  // 1 fixed-size type
  bool isReady; 
  uint a;
  address recipient;
  bytes32 data;

  // 2 variable-size types
  string name;
  bytes _data;
  uint[] amounts;
  mapping(uint => string) users;

  // 3 user-defined data
  struct User {
    uint id;
    string name;
    uint[] friendIds;
  }

  enum Color {
    RED,
    GREEN,
    BLUE
  }

  // use Color.BLUE...


  // Built-in variables
    // msg.sender
    // msg.value
    // now block.timestamp

  // Constructor
    uint b;
    constructor(uint _b) {
      b = _b;
    }

  // 7. Declaring functions
    uint value;

    function getValue() external view returns(uint) {
      return value;
    }

    function setValue(uint _value) external {
      value = _value;
    }

    // Para private functions usa "_"
      function _getValue() private view returns(uint) {
        return value;
      }

  // 8
}