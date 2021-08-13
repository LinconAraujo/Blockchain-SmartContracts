const { expect } = require("chai");

describe("Deploy smart contract", () => {
  it("test set value", async () => {
    const DeploySmartContract = await ethers.getContractFactory(
      "DeploySmartContract"
    );
    const deploySmartContract = await DeploySmartContract.deploy(1);
    await deploySmartContract.deployed();

    const setValue = await deploySmartContract.setV(123321);

    // wait until the transaction is mined
    await setValue.wait();

    expect(await deploySmartContract.getV()).to.equal(123321);
  });
});
