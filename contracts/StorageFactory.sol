// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "./SimpleContract.sol";

// This contract serves as a `factory` for creating othert smart contracts
contract StorageFactory {
    SimpleContract[] public simpleContract;

    function createSimpleContract() public {
        simpleContract = new SimpleContract();
    }
}