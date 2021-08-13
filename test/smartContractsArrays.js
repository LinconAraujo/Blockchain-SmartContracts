const { expect } = require("chai");

describe("Smart Contracts - Arrays", () => {
  let smartContractsArrays;

  before(async () => {
    const SmartContractsArrays = await ethers.getContractFactory(
      "SmartContractsArrays"
    );
    smartContractsArrays = await SmartContractsArrays.deploy();
    await smartContractsArrays.deployed();
  });

  it("use push array, the return the array length", async () => {
    await smartContractsArrays.usePush();
    const myArray = await smartContractsArrays.getMyArray();
    expect(myArray.length).to.equal(2);
  });

  it("use delete item", async () => {
    await smartContractsArrays.deleteItem();
    const myArray = await smartContractsArrays.getMyArray();
    expect(myArray.length).to.equal(2);
    expect(myArray[0]).to.equal("");
    expect(myArray[1]).to.equal("Day Goncalves");
  });

  it("use array args item", async () => {
    const arg = await smartContractsArrays.arrArgs([10, 20]);
    expect(arg.length).to.equal(2);
    expect(arg[0]).to.equal(10);
    expect(arg[1]).to.equal(20);
  });
});
