// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import './Call_anther_contract.sol';



contract ContractFun{
    Storage public store;

    constructor(){
        store=Storage(0x38cB7800C3Fddb8dda074C1c650A155154924C73);
    }
    function getNumber() public view returns (uint256){
        return store.retrieve();
    }
    function addOneTONumber()public returns(uint256){
        return store.addNum();
    }
}