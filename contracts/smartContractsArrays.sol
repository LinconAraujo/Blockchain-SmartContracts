//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsArrays {
  // 1. storage arrays
  // 3. array arguments and return arrays from function
  // 2. memory arrays

  string[] myArray; // C.R.U.D

  function getMyArray() external view returns(string[] memory) {
    string[] memory myArrayOne = new string[](2);
    myArrayOne = myArray;
    return myArrayOne;
  }

  function usePush() external {
    myArray.push('Lincon Araujo');
    myArray.push('Day Goncalves');
  }

  function deleteItem() external {
    delete myArray[0];
  }

  function arrArgs(uint[] calldata args) external pure returns(uint[] calldata) {
    return args;
  }
}