// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    string public name = "AnushkaToken";
    string public symbol = "STK";
    uint public totalSupply = 1000;

    mapping(address => uint) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    // Transfer tokens
    function transfer(address _to, uint _amount) public {
        require(balanceOf[msg.sender] >= _amount, "Not enough balance");

        balanceOf[msg.sender] -= _amount;
        balanceOf[_to] += _amount;
    }

    // Check balance
    function getBalance(address _user) public view returns (uint) {
        return balanceOf[_user];
    }
}