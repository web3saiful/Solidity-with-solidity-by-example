// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

//  2 ways to call parent constructors
// Order of intialization

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

//  way 1
contract U is S("saiful"),T("coach"){

}

