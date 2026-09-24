// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "./SimpleContract.sol";

// This contract serves as a `factory` for creating othert smart contracts
contract StorageFactory {
    SimpleContract[] public simpleContracts;

    function createSimpleContract() public {
        SimpleContract simpleContract = new SimpleContract();
        // Proceed to add the newly created contract to the array
        simpleContracts.push(simpleContract);
    }

    
}