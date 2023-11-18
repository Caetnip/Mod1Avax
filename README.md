# Functions and Errors Project

This project is smart contract developed in Solidity. It's a contract that demonstrates the use of require(), assert(), and revert() statements in Solidity.

## Description

 It’s a smart contract that allows you to deposit and withdraw amounts, and even end the contract using the three functions. It includes a public string variable greet that returns “Hello World!” and a public unsigned integer balance that keeps track of the contract’s balance.

## Getting Started
To run this program, we used Remix, an online Solidity IDE. To get started, go to the remix website at remix.etherium.org

Once you're on the remix website simply click the "Start Coding" in front of the homepage. Then copy and paste the following code:
```javascript

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

```
### Test your contract
To the the contract, compile with the Solidity Compiler at the left side of the screen, then click the icon under the compiler to deploy the contract created.

Once deployed looked under to see the functions of the compiler provided. 

### Authors 
Jan Miguel A. Pinlac
