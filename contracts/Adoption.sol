// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {
    address[] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[] memory) {
        return adopters;
    }
}