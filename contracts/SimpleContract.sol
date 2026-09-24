// SPDX-License-Identifier:MIT
pragma solidity ^0.8.27;

contract SimpleContract {

    address public owner;

    struct Owner {
        string name;
        uint256 balance;
        bool isActive;
        // datetime 
    }

    Owner public user;

    mapping(address => Owner) public users;

    constructor(string _name) {
        this.name = _name;
        owner = msg.sender;
    }

    modifier OnlyOwner {
        require(msg.sender == owner, "Only the owner has rights to this action");
        _;
    }

    modifier SufficientBalance {
        require(user.balance > 0, "Insufficient balance");
        _;
    }

    // Owner can change their name
    function setName(string calldata _name) external OnlyOwner {
        user.name = _name;
    }

    function retrieveName() public returns (string) {
        return user.name;
    }

    function retrieveBalance() public returns (uint256) {
        return user.balance;
    }

    function withdraw(uint _amount) public SufficientBalance {
        if (user.balance >= _amount) {
            user.balance -= _amount;
        }
    }

    function addUser(string calldata _name, address calldata _id) public {
        Owner memory u = new Owner();
        users[_id] = u;
    }
}