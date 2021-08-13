const { assert } = require("chai");

describe("Smart Contracts - Modifiers", () => {
  let smartContractsModifiers;

  before(async () => {
    const SmartContractsModifiers = await ethers.getContractFactory(
      "SmartContractsModifiers"
    );
    smartContractsModifiers = await SmartContractsModifiers.deploy();
    await smartContractsModifiers.deployed();
  });

  it("Passando pelo 1º modifier", async () => {
    try {
      await smartContractsModifiers.foo(11);
    } catch (error) {
      assert.include(
        error.message,
        "rola um erro aqui",
        "The error message should contain 'revert'"
      );
    }
  });

  it("Passando pelo 2º modifier", async () => {
    try {
      await smartContractsModifiers.foo(10);
    } catch (error) {
      assert.include(
        error.message,
        "aqui tbm rola um erro",
        "The error message should contain 'revert'"
      );
    }
  });

  it("Passando pelo modifier onlyAdmin", async () => {
    try {
      await smartContractsModifiers.bar();
    } catch (error) {
      assert.include(
        error.message,
        "only admin",
        "The error message should contain 'revert'"
      );
    }
  });
});
