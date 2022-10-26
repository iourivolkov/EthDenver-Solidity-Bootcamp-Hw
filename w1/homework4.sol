// SPDX-License-Identifier: UNLICENSED

// define the pragma compiler version to ^0.8.0
pragma solidity ^0.8.0;

// create a contract called VolcanoCoin
contract VolcanoCoin {

    // declare an address variable called owner
    address owner;
    // define a variable to hold the total supply of 10000
    uint256 totalSupply = 10000;

    // set up a variable called balances to keep track of the number of volcano coins that a user has
    mapping(address => uint256) balances;
    // create a mapping which returns an array of Payment structs when given this user's address
    mapping(address => Payment[]) payments;

    // create a constructor and within the contrusctor, store the owner's address
    constructor() {
        owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        // change constructor to give all of the totalSupply to the owner of the contract
        balances[owner] = 11000;
    }

    // create an event that emits the new value whenever the supply changes. when the supply changes, emit this event
    event supplyChanged(uint256);
    event transferCompleted(uint256, address indexed);

     // create a struct called Payment that stores the transfer amount and the recipient's address
    struct Payment {
        uint256 transferToken;
        address recipient;
    }

    // create a modifier which only allows an owner to execute certain functions
    modifier onlyOwner {
        if(msg.sender == owner){
            _;
        }
    }

    // make a public function that returns the total supply
    function getTotalSupply() public view returns (uint) {
        return totalSupply;
    }

    // make a public function that can increase the total supply. Inside the function, add 1000 to the current total supply

    // make the increaseTotalSupply function public but add modifier so that only the owner can execute it
    function increaseTotalSupply() public onlyOwner {
        totalSupply += 1000;
        emit supplyChanged(totalSupply);
    }

    // there are two ways to allow the balances variable to be read from the contract -> create aa function to retrieve the balances OR add the "public" keyword at the front of the mapping name to automatically create a "getter" function
    function getUserBalance(address user) public view returns(uint) {
        return balances[user];
    } 

    // add a public function called transfer to allow a user to transfer their tokens to another address. The function should have two params - the amount to transfer and the recipient address
    function transfer(address recipient, uint256 transferToken) public {

        balances[msg.sender] -= transferToken;
        balances[recipient] += transferToken;

        // add an event to the transfer function to indicate that a transfer has taken place. it should log the amount and the recipient address
        emit transferCompleted(transferToken, recipient);
    }

    function getPayment() public view returns (Payment[]memory) {
        return payments[msg.sender];
    }
}