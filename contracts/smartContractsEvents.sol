//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsEvents {
  event NewTrade (
    uint date,
    address from,
    address to,
    uint amount
  );

  function trade(address to, uint amount) external {
    emit NewTrade(block.timestamp, msg.sender, to, amount);
  }
}