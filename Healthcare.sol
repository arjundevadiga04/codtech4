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
