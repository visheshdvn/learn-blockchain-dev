// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleUint {
    uint256 public myUint = 83838383;
    uint8 public myUint8 = 250;
    int public myInt = -10;

    function setMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function incrementInt() public {
        myInt++;
    }
}
