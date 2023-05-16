// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract storage1{

    uint256 public number=5;
    uint256 number2=10;
    bool mynumber=false;
    string favStrings="uzi";
    int256 anotherNumber= -5;
    //address myaddy = 0x7873836338262822929344;
    bytes mybytes="cat";

    //how to init to zero?

    uint128 zero; 

    //Creating a store using structs

    struct People{
        uint256 age;
        string name;

    }

    People public person = People({name:"kev",age:22});

    mapping(string => uint256) public findNumber; 


    //Creating arrays
    struct Students{
        uint256 admno;
        string name;
    }
    Students[] public students;



    function store(uint256 numberChange) public{
        number = numberChange;
    }
    function retrieve() public view returns(uint256){
        return number;
    }

    //pure functions do some math init
    function retrieveA(uint256 number) public pure  
    {
        number + number;
    } 
    function addStudent(string memory jina,uint256 admission) public{
        students.push(Students(admission,jina));
        findNumber[jina] = admission;
    }



}