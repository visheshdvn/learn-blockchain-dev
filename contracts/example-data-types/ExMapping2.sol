// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMappingWithdrawls {
    mapping(address => uint) public balanceRecieved;

    function sendMoney() public payable {
        balanceRecieved[msg.sender] += msg.value;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdrawAllMoney(address payable _to) public {
        _to.transfer(balanceRecieved[msg.sender]);
        balanceRecieved[msg.sender] = 0;
    }
}
