// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "./SimpleContract.sol";

// This contract serves as a `factory` for creating other smart contracts
contract StorageFactory {

    // TODO: Store every SimpleContract created by this factory
    // inside this dynamic array.

    SimpleContract[] public simpleContracts;


    // TODO: Create a function that deploys a NEW SimpleContract.
    //
    // The function should:
    // 1. Receive a name from the caller.
    // 2. Create a new SimpleContract using that name.
    // 3. Store the newly created contract inside simpleContracts.
    //
    // Think about:
    // Who will become the owner of the newly created SimpleContract?
    function createSimpleContract(string calldata _name) public {
        SimpleContract _name = new SmartContract();
        simpleContracts.push(_name);
    }


    // TODO: Create a function that returns how many
    // SimpleContract instances have been created.
    //
    // Hint:
    // Think about the length of the simpleContracts array.
    function getNumberOfContracts() public view returns (uint256) {
        return simpleContracts.length;
    }

    // TODO: Create a function that returns the address
    // of a SimpleContract at a particular index.
    //
    // Example:
    // index 0 -> first SimpleContract
    // index 1 -> second SimpleContract
    //
    // Think about what Solidity stores when you put
    // a contract inside an array.
    function getContractAddress(uint _position) public view returns (address) {
        SimpleContract cont = simpleContracts[position];
        address contAddress = address(cont);
        return contAddress;
    }


    // TODO: Create a function that retrieves the owner
    // of a specific SimpleContract.
    //
    // You will need:
    // 1. The index of the contract.
    // 2. A way to communicate with that SimpleContract.
    //
    // Hint:
    // SimpleContract already has a public `owner` variable.
    function getContractOwner(uint _position) public view returns (address) {
        SimpleContract con = simpleContracts[_position];
        User user = con.owner();
        return address(user);
    }


    // TODO: Create a function that retrieves the name
    // stored inside a specific SimpleContract.
    //
    // Think about:
    // - How can StorageFactory communicate with another contract?
    // - Which function in SimpleContract gives you the name?
    function getContractName(uint _position) public view returns (string memory) {
        SimpleContract con = simpleContracts[_position];
        string memory conName = con.retrieveName();
        return conName;
    }


    // TODO: Create a function that changes the name
    // of a user inside a selected SimpleContract.
    //
    // Think carefully about the `OnlyOwner` modifier
    // in SimpleContract.
    //
    // Ask yourself:
    // Who is actually calling SimpleContract?
    // Is it the person calling StorageFactory?
    // Or is it StorageFactory?
    function changeContractName(string calldata _newName, uint _position) public {
        ///
    }


    // TODO: Create a function that retrieves the balance
    // of a user from a selected SimpleContract.
    //
    // Again, think about how one contract calls another.
    function getContractBalance(/* your parameter */)
        public
        view
        returns (uint256)
    {
        
    }
}