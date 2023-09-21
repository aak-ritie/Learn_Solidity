//SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //Stating our version ^ this state that this contract works with 0.8.18 version or greater version than that

contract SimpleStorage{

    uint256 myfavoriteNumber; //default value of uint256 type is 0, bool ko false
    
   // uint256[] ListoffavoriteNumber; 
   struct Person{
       uint256 favoriteNumber;
       string name;
   }
   //Person public myFriend= Person({favoriteNumber: 7, name: "AK"});
   //    Person public myFriend= Person(7,"AK");
    //Dynamic Array
    Person[] public ListOfPeople;
    mapping (string=>uint256) public nameTofavoriteNumber;

     function store(uint256 _favoriteNumber) public{
         myfavoriteNumber=_favoriteNumber;
     }
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }
     
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
     
      ListOfPeople.push(Person(_favoriteNumber,_name));
      nameTofavoriteNumber[_name]=_favoriteNumber;
    }
}
