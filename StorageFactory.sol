// SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory
{
    SimpleStorage[] public ListOfsimpleStorage;

    //Function to create new simpleStorage contract
    function createSimpleStorageContract() public {
     SimpleStorage newSimpleStorage= new SimpleStorage();
     ListOfsimpleStorage.push(newSimpleStorage);
    }

//sfStore allow to access the 'store' function of SimpleStorage contract from the array ListOfSimpleStorage

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public{
         
    SimpleStorage mySimpleStorage =ListOfsimpleStorage[_simpleStorageIndex];
    mySimpleStorage.store(_newSimpleStorageNumber);

    }

    //function to retrieve the value of mysimplestorage

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
     SimpleStorage mySimpleStorage =ListOfsimpleStorage[_simpleStorageIndex];
     return mySimpleStorage.retrieve();
    }
}