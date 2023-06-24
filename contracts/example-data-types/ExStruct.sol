// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Wallet {
    PaymentRecieved public payment;

    function payContract() public payable {
        payment = new PaymentRecieved(msg.sender, msg.value);
    }
}

contract PaymentRecieved {
    address public from;
    uint256 public amount;

    constructor(address _from, uint256 _amount) {
        from = _from;
        amount = _amount;
    }
}

contract wallet2 {
    struct PaymentRecievedStruct {
        address from;
        uint amount;
    }

    PaymentRecievedStruct public payment;

    function payContract() public payable {
        payment = PaymentRecievedStruct(msg.sender, msg.value);
        // or
        // payment.from = msg.sender;
        // payment.amount = msg.value;
    }
}
