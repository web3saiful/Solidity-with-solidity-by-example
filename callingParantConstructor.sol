// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// 2ways to call parent constructors
// Order of initialization

contract S{
    string public name;

    constructor(string memory _name){
        name=_name;
    }
}
contract T{
    string public text;
    
    constructor(string memory _text){
        text=_text;

    }   
}
contract U is S("s"),T("t") {
  
}
contract V is S,T{
   constructor (string memory _name,string memory _text)S(_name)T(_text){


   }
}
contract VV is S("s"),T{
    constructor(string memory _text)T(_text){

    }
}


