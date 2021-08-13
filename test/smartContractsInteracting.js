const { expect } = require("chai");

describe("Smart Contracts Interacting", () => {
  let smartContractsInteractingA;
  let smartContractsInteractingB;
  let smartContractsInteractingC;

  before(async () => {
    const SmartContractsInteractingC = await ethers.getContractFactory(
      "SmartContractsInteractingC"
    );
    smartContractsInteractingC = await SmartContractsInteractingC.deploy();
    await smartContractsInteractingC.deployed();

    const SmartContractsInteractingB = await ethers.getContractFactory(
      "SmartContractsInteractingB"
    );
    smartContractsInteractingB = await SmartContractsInteractingB.deploy();
    await smartContractsInteractingB.deployed();

    const SmartContractsInteractingA = await ethers.getContractFactory(
      "SmartContractsInteractingA"
    );
    smartContractsInteractingA = await SmartContractsInteractingA.deploy();
    await smartContractsInteractingA.deployed();
  });

  it("Tokens", async () => {
    expect(smartContractsInteractingC).includes.keys("address");
    expect(smartContractsInteractingB).includes.keys("address");
    expect(smartContractsInteractingA).includes.keys("address");
  });

  it("Interacting with Contract B", async () => {
    const { address } = smartContractsInteractingB;
    await smartContractsInteractingA.setAddressB(address);
    expect(await smartContractsInteractingA.callHelloWorld()).to.equal(
      "HelloWorld"
    );
  });

  it("Interacting with Contract C", async () => {
    const { address } = smartContractsInteractingC;
    await smartContractsInteractingA.setAddressC(address);
    expect(await smartContractsInteractingA.callOlaBrasil()).to.equal(
      "Ola Brasil"
    );
  });
});
