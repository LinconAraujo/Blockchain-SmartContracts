//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface InterfaceSmartContractsInteractingC {
  function olaBrasil() external pure returns(string memory);
}

contract SmartContractsInteractingC {
  function olaBrasil() external pure returns(string memory) {
    return 'Ola Brasil';
  }
}