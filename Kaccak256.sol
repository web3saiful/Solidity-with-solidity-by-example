// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HashFun{
    function hash(string memory text, uint num,address addr)external pure returns(bytes32){
        return keccak256(abi.encodePacked(text,num,addr));
    }


function endcode(string memory text0,string memory text1)external pure returns(bytes memory){
    return abi.encode(text0,text1);
    }


function endcodePacked(string memory text0,string memory text1)external pure returns(bytes memory){
    return abi.encodePacked(text0,text1);
    }
 
function collision(string memory text0,string memory text1)external pure returns(bytes32){
    return keccak256(abi.encodePacked(text0,text1));
 }
}