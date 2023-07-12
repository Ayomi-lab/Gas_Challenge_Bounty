const { ethers } = require("hardhat");
const { expect } = require("chai");

describe("Gas Challenge Contract", () => {
  let gasContract;

  beforeEach(async () => {
    const GasChallenge = await ethers.getContractFactory("GasChallenge");
    gasContract = await GasChallenge.deploy();
    await gasContract.deployed();
  });

  describe("Compute Gas", () => {
    it("Should return lower gas", async () => {
      await gasContract.notOptimizedFunction();
      await gasContract.optimizedFunction();
    });
  });

  describe("Check Sum Of Array", () => {
    it("Should return 0", async () => {
      await gasContract.optimizedFunction();
      const sum = await gasContract.sum();
      expect(sum).to.equal(0);
    });
  });
});
