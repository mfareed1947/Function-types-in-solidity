//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract functionContract {
    // when we create a public state variable we do not need to create a getter Function
    uint256 public number = 10;

    uint256 myNumber = 5;

    // when we use state variable for read only purpose we use mainly (view) keyword

    function getter() public view returns (uint256) {
        return myNumber;
    }

    //The pure functions do not read or modify the state variables, which returns the values only using the parameters passed to the function or local variables present in it

    function storeData2() public pure returns (uint256 sum, uint256 multi) {
        uint256 num1 = 5;
        uint256 num2 = 8;

        sum = num1 + num2;
        multi = num1 * num2;
    }

    // if we wnat to update state variable we not use [view and pure] keyword

    // in setter function we change a state variable the gas fee also required
    function setter() public {
        myNumber += 1;
    }
}
