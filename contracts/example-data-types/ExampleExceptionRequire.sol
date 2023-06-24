// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExampleExceptionRequire {
    mapping(address => uint) public balanceRecieved;

    function receiveMoney() public payable {
        balanceRecieved[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(
            _amount <= balanceRecieved[msg.sender],
            "Not enough funds, aborting."
        );
        balanceRecieved[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}
