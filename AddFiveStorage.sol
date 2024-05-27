// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    string sayHolla;

    function writeHolla(string memory _sayHolla) public {
        sayHolla = _sayHolla;
    }

    function sayHello() public view returns(string memory) {
        return sayHolla;
    }
}