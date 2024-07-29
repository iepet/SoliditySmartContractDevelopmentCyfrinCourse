//SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our version

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function sayHello () public pure returns (string memory){
            return "Hello";
    }

    function store (uint256 _newNumber) public override {
        myfavouriteNumber = _newNumber+5;
    }
}