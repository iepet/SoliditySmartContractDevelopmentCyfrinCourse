//SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // stating our version

contract SimpleStorage{
    bool hasFavouriteNumber = true;
    //string favouriteNumberInText = "88";
    //int256 favouriteNumerInt = -88;
    //address myAddress = 0x1Fd215A5777228ADA8034A4A22dec11590dfa4bD;

        
    uint256 public myfavouriteNumber;
    //uint256[] listOfFavouriteNumbers;
    
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    Person public pat = Person ({favouriteNumber:7, name:"Pat"});
   
    //dynamic array
    Person[] public listOfPeople;

    function store (uint256 _favouriteNumber) public virtual {
        myfavouriteNumber = _favouriteNumber;
    } 

    mapping (string=>uint256) public nameToFavouriteNumber;


    // view and pure, disallow updating state, its only for reading, pure can only return static variables
    function retrieve() public view returns(uint256){
        return myfavouriteNumber;
    }

    //caldata is temporary data that cannot be modified, memory is temporary data that can be modified, storage
    function addPerson(uint256 _favouriteNumber, string memory _name) public{
        //Person memory newPerson = Person({favouriteNumber:_favouriteNumber, name:_name});
        //listOfPeople.push(newPerson);
        listOfPeople.push(Person(_favouriteNumber,_name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}