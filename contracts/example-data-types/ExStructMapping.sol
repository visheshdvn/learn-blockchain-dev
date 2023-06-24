// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract MappingStructExample {
    struct Transaction {
        uint256 amount;
        uint256 timestamp;
    }

    struct Balance {
        uint256 totalBalance;
        uint256 numDeposits;
        mapping(uint256 => Transaction) deposits;
        uint256 numWithdrawls;
        mapping(uint256 => Transaction) withdrawls;
    }

    mapping(address => Balance) public balances;

    function getDepositNum(
        address _from,
        uint _numDeposit
    ) public view returns (Transaction memory) {
        return balances[_from].deposits[_numDeposit];
    }

    function depositMoney() public payable {
        balances[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balances[msg.sender].deposits[
            balances[msg.sender].numDeposits
        ] = deposit;
        balances[msg.sender].numDeposits++;
    }

    function withdrawMoney(address payable _to, uint256 _amount) public {
        balances[msg.sender].totalBalance -= _amount;

        Transaction memory withdrawl = Transaction(_amount, block.timestamp);
        balances[msg.sender].withdrawls[
            balances[msg.sender].numWithdrawls
        ] = withdrawl;
        balances[msg.sender].numWithdrawls++;

        _to.transfer(_amount);
    }
}
