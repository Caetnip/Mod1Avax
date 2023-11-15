# Solidity Functions and Errors

The Solidity code defines a smart contract named HelloWorld that includes functions enforcing conditions on transfer amounts and utilizing error-handling mechanisms like require, revert, and assert. This contract serves as an illustrative example of error handling and basic functionalities in Solidity, showcasing different mechanisms for handling errors and validating conditions.

## Description

HelloWorld in the Solidity contract serves as an example of how to handle errors using assert, revert, and need. It includes capabilities like checking and checking2 that employ the assert statement to validate particular circumstances, establishing conditions for transfer amounts and guaranteeing they are larger than zero. The contract also contains a special error function (Error_check) that illustrates how to use require, reverse, and assert in various error situations. This function shows the flexibility of Solidity's error-handling capabilities by providing a concrete example of how to handle bespoke errors within the contract. In conclusion, the contract offers information on error handling and basic contract features, such as the development of a unique error function.

## Getting Started

### Executing program

To run this program, you can use Gitpod, an online Solidity IDE. To get started, go to the Gitpod website at https://jeffryanpol-soliditysta-nfsdi20gyos.ws-us106.gitpod.io

Once you are on the Gitpod website, Run tge program HelloWorld.sol in the terminal. Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {

    function require_transfer(uint _i) public pure {
        require(_i > 0, "Transfer amount must be greater than 0");
    }

    function revert_transfer(uint _i) public pure {
        if (_i <= 0) {
            revert("Transfer amount must be greater than 0");
        }
    }

    uint public original_value = 2;

    uint public original_value_2 = 2;

    uint public manipulated_value = 0;

    function checking() public {
        original_value = manipulated_value;
        assert(original_value > 1);
    }

    function checking2() public view {
        assert(original_value_2 > 1);
    }

    function Error_check(uint _input) public pure {
        require(_input > 5, "Input must be greater than 5");

        if (_input % 2 == 0) {
            revert("Input must be an odd number");
        }

        assert(_input % 3 != 0);
    }
}

```

To compile the code, Go to terminal and input "npm install -g truffle" and wait for the installation to finish, next input "truffle develop" then compile and migrate.

Once the code is compiled, you can deploy the contract by typing "instance = await HelloWorld.deployed()". Next is input "instance.(nameofthefunction)()" and input a number in the () and enter. This will display an error if any below or equal to 0 has been input or it will display result if input greater than 0
## Authors

Jan Miguel A. Pinlac @Catnaep

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
