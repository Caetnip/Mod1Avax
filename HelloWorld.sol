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
