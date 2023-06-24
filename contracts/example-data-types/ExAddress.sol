// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract ExampleAddr {
    address public someAddress;

    function setSomeAddr(address _someAddr) public {
        someAddress = _someAddr;
    }

    function getBalance() public view returns (uint) {
        return someAddress.balance;
    }
}
