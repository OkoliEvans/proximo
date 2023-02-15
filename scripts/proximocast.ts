import { ethers } from "hardhat";



async function main() {
    
    const [owner, acct1] = await ethers.getSigners();

    const Proximo = await ethers.getContractFactory("BRX");

    const proximo = await Proximo.deploy();
    console.log("Contract deploying...");
    

    const proximoPlus = await proximo.deployed();
    console.log(`proximo deployed to: ${proximoPlus.address}`);

}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
  