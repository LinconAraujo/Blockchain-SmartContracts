
//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SmartContractsErrors {

  function useRevert(uint arg) pure external {
    if(arg == 10) {
      revert('this is why it reverts');
    }
  }

  function useRequire(uint arg) pure external {
    require(arg != 10, 'this is why it reverts');
  }

  function useAssert(uint arg) pure external {
    assert(arg != 10);
  }

  function willThrowInOtherContract() external {
    SmartContractsErrorsB b = new SmartContractsErrorsB();
    b.foo();
  }
}

contract SmartContractsErrorsB {
  function foo() pure external {
    revert('test error in other contract');
  }
}
