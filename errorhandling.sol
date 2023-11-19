// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConditionalFunctions {
    uint public totalValue;

    // Function using require statement
    function requireFunction(uint number) public {
        require(number > 25, "Value must be greater than 25");
        totalValue += number;
    }

    // Function using revert statement
    function revertFunction(uint num1, uint num2) public {
        if (num1 > num2) {
            revert("Number 1 cannot be greater than number 2 ");
        }
        totalValue = num1 + num2;
    }

    // Function using assert statement
    function assertFunction(uint _value) public {
        assert(_value >10);
        totalValue = _value;
    }
}
