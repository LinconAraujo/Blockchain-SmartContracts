//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import './smartContractsInteractingC.sol';

contract SmartContractsInteractingA {
  // 1. Call function of other contract
  // 2. Import keyword
  // 3. Contract interface
  // 4. Error propagation

  // 1. interface of B => B
  // 2. address of B

  address addressB;
  address addressC;

  function setAddressB(address _addressB) external {
    addressB = _addressB;
  }  
  
  function setAddressC(address _addressC) external {
    addressC = _addressC;
  }

  function callHelloWorld() external view returns(string memory) {
    SmartContractsInteractingB smartContractsInteractingB = SmartContractsInteractingB(addressB);
    return smartContractsInteractingB.helloWorld();
  }

  function callOlaBrasil() external view returns(string memory) {
    InterfaceSmartContractsInteractingC smartContractsInteractingC = InterfaceSmartContractsInteractingC(addressC);
    return smartContractsInteractingC.olaBrasil();
  }

}

contract SmartContractsInteractingB {
  
  function helloWorld() external pure returns(string memory) {
    return 'HelloWorld';
  }

}