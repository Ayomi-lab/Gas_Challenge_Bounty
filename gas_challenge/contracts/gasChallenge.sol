// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasChallenge {
    uint8[10] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    uint256 public sum;
    
    constructor() {
        sum = getSumOfArray();
    }
    
    function getSumOfArray() private view returns (uint256) {
        uint256 totalSum;
        for (uint8 i = 0; i < numbers.length; i++) {
            totalSum += numbers[i];
        }
        return totalSum;
    }
    
    function notOptimizedFunction() public {
        for (uint8 i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
        sum = 0;
    }
    
    function optimizedFunction() public {
        unchecked {
            for (uint8 i = 0; i < numbers.length; i++) {
                numbers[i] = 0;
            }
        }
        sum = 0;
    }
}
