const {
  ethers
} = require("hardhat");


async function main() {

  // gets whitelist contract and store in whitelistContract variable
  const whitelistContract = await ethers.getContractFactory("Whitelist");

  // deploy contract and value 10 is the value needed in the constructor
  // deploy function takes constructor arguements
  const deployedWhiteListContract = await whitelistContract.deploy(10);

  // wait for it to get deployed
  await deployedWhiteListContract.deployed();

  // log the deployed address 
  console.log("Whitelist Contract Address", deployedWhiteListContract.address);
}


// call function 
// exit with 0 status = all good
// if error then catch error and exit with status 1
main().then(() => process.exit(0)).catch((error) => {
  console.error(error);
  process.exit(1);
});