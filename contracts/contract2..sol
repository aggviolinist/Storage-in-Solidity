
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./contract1.sol";

contract storage2 is storage1{
    //how you do inheritance, its by adding "is" to the contract name of the to be inherited contract.


    storage1[] public storeAddy;


    function createStore() public{
        storage1 storeCreated = new storage1();
        storeAddy.push(storeCreated);
    }
    function storeIndexing(uint256 contractOneIndex, uint256 contractNumber) public{

        storage1 storeOne = storage1(address(storeAddy[contractOneIndex]));
        storeOne.store(contractNumber);

    }
    function returnDataInIndex(uint256 contractOneIndex) public view returns (uint256){
        storage1(address(storeAddy[contractOneIndex])).retrieve();
        return retrieve();
        //storeOne.storage1(address(storeAddy[contractOneIndex])).retrieve();
        
        //Before adding "is" it was return storeOne.retrieve();
    }

}