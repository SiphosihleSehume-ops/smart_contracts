// SPDX-License-Identifier:MIT
pragma solidity ^0.8.27;

contract SimpleContract {

    address public owner;

    struct Owner {
        string name;
        string balance;
        bool isActive;
        // datetime 
    }

    Owner public user;

    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner {
        require(msg.sender == owner, "Only the owner has rights to this action");
        _;
    }

    // Owner can change their name
    function setName(string calldata _name) external OnlyOwner {
        user.name = _name;
    }

    function retrieveName() public returns (string) {
        return user.name;
    }

    function retrieveBalance() public returns (string) {
        return user.balance;
    }


}