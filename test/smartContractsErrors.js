const { assert } = require("chai");

describe("Smart Contracts - Errors", () => {
  let smartContractsErrors;

  before(async () => {
    const SmartContractsErrors = await ethers.getContractFactory(
      "SmartContractsErrors"
    );
    smartContractsErrors = await SmartContractsErrors.deploy();
    await smartContractsErrors.deployed();
  });

  it("use Revert: The error message should contain 'revert'", async () => {
    try {
      await smartContractsErrors.useRevert(10);
    } catch (error) {
      assert.include(
        error.message,
        "this is why it reverts",
        "The error message should contain 'revert'"
      );
    }
  });

  it("use Require: The error message should contain 'revert'", async () => {
    try {
      await smartContractsErrors.useRequire(10);
      console.log("afasdadasdasda");
    } catch (error) {
      assert.include(
        error.message,
        "this is why it reverts",
        "The error message should contain 'revert'"
      );
    }
  });

  it("use assert, The error message should contain 'Assertion'", async () => {
    try {
      await smartContractsErrors.useAssert(10);
    } catch (error) {
      assert.include(
        error.message,
        "Assertion error",
        "The error message should contain 'Assertion'"
      );
    }
  });

  it("will Throw In Other Contract, The error message should contain 'revert'", async () => {
    try {
      await smartContractsErrors.willThrowInOtherContract();
    } catch (error) {
      assert.include(
        error.message,
        "test error in other contract",
        "The error message should contain 'revert'"
      );
    }
  });
});
