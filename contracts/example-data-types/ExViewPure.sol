// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleViewPure {
    uint public myStorageVariable;

    function getMyStorageVariable() public view returns (uint) {
        return myStorageVariable;
    }

    function getAddition(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    function setMyStorageVasriable(uint _newVar) public {
        myStorageVariable = _newVar;
    }
}

// Pure function declares that no state variable will be changed or read. view tells us that by running the function, no data will be saved/changed.
