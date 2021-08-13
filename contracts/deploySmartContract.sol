// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DeploySmartContract {
  uint data;

  constructor(uint _data) {
    data = _data;
  }

  function getV() external view returns(uint) {
    return data;
  }

  function setV(uint _data) external {
    data = _data;
  }
}