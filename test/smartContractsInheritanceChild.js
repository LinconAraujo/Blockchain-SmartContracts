const { expect } = require("chai");

describe("Smart Contracts Inheritance", () => {
  let smartContractsInheritanceParent;
  let smartContractsInheritanceChild;

  before(async () => {
    const SmartContractsInheritanceParent = await ethers.getContractFactory(
      "SmartContractsInheritanceParent"
    );
    smartContractsInheritanceParent =
      await SmartContractsInheritanceParent.deploy(1);
    await smartContractsInheritanceParent.deployed();

    const SmartContractsInheritanceChild = await ethers.getContractFactory(
      "SmartContractsInheritanceChild"
    );
    smartContractsInheritanceChild =
      await SmartContractsInheritanceChild.deploy(1);
    await smartContractsInheritanceChild.deployed();
  });

  it("increment data in parent contract", async () => {
    await smartContractsInheritanceChild.bar();
    const response = await smartContractsInheritanceChild.fooBar();
    expect(response).to.equal(2);
  });
});
