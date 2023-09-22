// SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

//AddFive Storage will inheritate SimpleStorage
contract AddFive is SimpleStorage{

   function store(uint256 _addFiveNum) public override {
   myfavoriteNumber=_addFiveNum+5;
    
   }

}