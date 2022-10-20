// SPDX-License-Identifier: None

pragma solidity 0.8.17;

contract BootcampContract {

    // 2. Update the deployer variable w/ the deployer's address when the contract is deployed
    constructor () {
        owner = msg.sender;
    }

    uint256 number;
       // 1. add variable to hold the address of the deployer of the contract
     address owner;

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    // 3. write an external function to return address 
    // 0x000000000000000000000000000000000000dEaD if called by the deployer
    // otherwise return the deployer's address
    function checkOwner() external view returns(address) {
        if(msg.sender == owner) {
            return 0x000000000000000000000000000000000000dEaD;
        } else {
            return owner;
        }
    }

   
}