const {ethers} = require("hardhat");
async function main(){
  const whitelistContract = await ethers.getContractFactory("Whitelist");
  const deployedWhitelistContract = await whitelistContract.deploy(10); 
  await deployedWhitelistContract.deployed();
  console.log("Whitelist Contract Address : " , deployedWhitelistContract.address);
}
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
// 0xC357405bf135BD10aCD809C5DD72592C951d55D1