# Gas_Challenge
Changed the array type: The numbers array type was changed to uint8. This change reduces the gas consumption since uint8 requires less storage.
Updated visibility of variables: The numbers and sum variables were made public, allowing direct access to their values. This eliminates the need for a separate function to retrieve the sum of the array.
Loop counter data type: I cahnged the loop counters in the getSumOfArray, notOptimizedFunction, and optimizedFunction to uint8 to match the array size and optimize gas usage.
Optimized gas calculations: The getSumOfArray function calculates the sum of the numbers array using the updated loop counter. It initializes totalSum as a uint256 and increments it by adding each element of the array.
Overall, these changes aim to optimize gas consumption by using a smaller data type, allowing direct access to variables, matching loop counter types to array size, and efficiently calculating the sum of the array.

# Sum_Challenge
Contract deployment: The GasChallenge contract is deployed using await gasContract.deployed() to ensure the contract is fully deployed and ready to be used before running the tests.
Improved test descriptions: The describe block is updated to have a more concise and descriptive name, "Gas Challenge Contract", to clearly represent the purpose of the tests.
Accessing the sum variable: The test accesses the sum variable directly using gasContract.sum(). This is possible because the sum variable was made public in the contract, allowing direct access.
Enhanced expect assertion: The expect assertion compares the value of the sum variable directly to the expected value of 0. This ensures that after running the optimizedFunction, the sum variable is updated correctly and contains the expected value.
