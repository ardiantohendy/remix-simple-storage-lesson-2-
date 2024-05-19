// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity version

contract SimpleStorage {
 // Basic Types; boolean, uint, int, string, address, bytes
 
 // favoriteNumber gets initialized to 0 if no value is giving

 uint256 myFavoriteNumber;

 struct Person  {
    uint256 favoriteNumber;
    string name;
 }
//  without array
//  Person public  pat = Person({favoriteNumber: 7, name: "pat"});
//  Person public  bat = Person({favoriteNumber: 8, name: "bat"});

//with array

 Person[] public listOfPeople;
 
 mapping(string => uint256) public nameToFavoriteNumber;

 function store(uint256 _favoriteNumber) public {
    myFavoriteNumber = _favoriteNumber;

 }
 
 function retrieve() public view returns (uint256) {
    return myFavoriteNumber;
 }   
 
 //adding new person function
 //memory used for storing data but temporary, like calldata and storage
 function addPerson(string memory _name, uint256 _favoriteNumber) public {
    //this is a valid way but not the best way
    // Person memory newPerson = Person(_favoriteNumber, _name);
    
    //this is the best way
    listOfPeople.push(Person(_favoriteNumber, _name));
    //looking for favoriteNumber based on name
    nameToFavoriteNumber[_name] = _favoriteNumber;
 } 
}