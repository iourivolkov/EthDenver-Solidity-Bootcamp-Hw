// SPDX-License-Identifier: UNLICENSED

import "@openzeppelin/contracts/access/Ownable.sol";

pragma solidity ^0.8.0;

contract VolcanoCoin is Ownable {

    uint256 totalSupply = 10000;
    mapping(address => uint256) balances;
    mapping(address => Payment[]) payments;

    event supplyChanged(uint256);
    event transferCompleted(uint256, address);

    struct Payment {
        uint256 transferToken;
        address recipient;
    }


    constructor() {
        balances[owner()] = 10000;
    }

    function increaseTotalSupply() external onlyOwner {
        totalSupply += 1000;
        balances[owner()] += 1000;
        emit supplyChanged(totalSupply);
    }

    function transferCoins(address recipient, uint256 amount) external {
        assert(amount > 0);
        require(balances[msg.sender] >= amount, "Sender does not have enough balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        payments[msg.sender].push(Payment(amount, recipient));
        emit transferCompleted(amount, recipient);
    }

    function getTotalSupply() external view returns(uint256) {
        return totalSupply;
    }

    function getBalance(address addr) external view returns(uint256) {
        return balances[addr];
    }

    function getPayments(address addr) external view returns(Payment[] memory) {
        return payments[addr];
    }
}