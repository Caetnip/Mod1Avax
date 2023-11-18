// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Wallet{
    string public greet = "Hello World!";
    uint public balance;

    // Function to deposit amount into the contract
    function deposit(uint _amount) public payable {
        require(_amount > 0, "Deposit amount must be greater than 0");
        balance += _amount;
    }

    // Function to withdraw amount from the contract
    function withdraw(uint _amount) public {
        if (_amount > balance) {
            revert("Insufficient balance");
        }
        balance -= _amount;
    }

    // Function to end the contract
    function endContract() public {
        assert(balance == 0);
        selfdestruct(payable(msg.sender));
    }
}
