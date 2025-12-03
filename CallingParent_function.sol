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


// way 2
contract V is S,T{
    constructor(string memory _name,string memory _text) S(_name)T(_text){

    }
}
// Way 2 with  static declaration
contract VV is S("s"),T{
    constructor(string memory _text)T(_text){

    }
}


// Order of execution
// 1.S
// 2.T
// 3.V0
contract V0 is S,T{
    constructor(string memory _name,string memory _text) S(_name) T(_text){} //what cames after "is" will always take precedence.
}

// Order of execution
// 1.S
// 2.T
// 3.V0
contract V1 is S,T{
    constructor(string memory _name,string memory _text) T(_text) S(_name){} //what cames after "is" will always take precedence.
}