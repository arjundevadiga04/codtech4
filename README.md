## Task4: Private Blockchain Implementation

## Requirements:
- 1.Ganache
- 2.Truffle
- 3.Node.js
- 4.MetaMask extension

  ## Deployment Steps:
- 1.Install truffle
  ``` 
   npm install -g truffle
   ```
- 2.Create project folders and initialize
 ``` 
   mkdir HealthcareBlockchain
 cd HealthcareBlockchain
truffle init
   ```
- 3.Install Ganache
- 4.Create a file contracts/Healthcare.sol:
   ``` 
   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.0;

      contract Healthcare {
       struct Patient {
        string name;
        uint256 age;
        string medicalHistory;
    }

    mapping(address => Patient) public patients;

    function addPatient(string memory _name, uint256 _age, string memory _medicalHistory) public {
        patients[msg.sender] = Patient(_name, _age, _medicalHistory);
    }

    function getPatient() public view returns (string memory, uint256, string memory) {
        Patient memory patient = patients[msg.sender];
        return (patient.name, patient.age, patient.medicalHistory);
    }
  }

   ```
  5.Create file migrations/2_deploy_contracts.js:
   ``` 
   const Healthcare = artifacts.require("Healthcare");

     module.exports = function (deployer) {
             deployer. Deploy(Healthcare);
    };
   ```
 - 6.Configure Metamask to Ganache
  
  7.Update truffle-config.js:
   ``` 
  module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "1337"
    }
  },
  compilers: {
    solc: {
      version: "0.8.0"
    }
  }
  };

   ```
8.Do create your application in index.html
- 9..Compile 
 ``` 
   truffle compile 
   ```
- 10.Make sure that Ganache is Running
- 11.Deploy
 ``` 
   truffle migrate
   ```
- 12.Install http-server via Node.js
- 13.Make sure to Update contract address in html file(npm install -g http-server)
- 14.Start the server and use your Dapp in browser
  

## Results:

![Image](https://github.com/user-attachments/assets/3ca4713a-d33a-4d90-9edd-69ae241b8a46)

![Image](https://github.com/user-attachments/assets/d4e2485a-2b2d-4b10-a3cc-0ee6c5614efb)
