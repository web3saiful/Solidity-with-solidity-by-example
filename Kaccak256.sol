// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HashFun{
    function hash(string memory text, uint num,address addr)external pure returns(bytes32){
        return keccak256(abi.encodePacked(text,num,addr));
    }



}