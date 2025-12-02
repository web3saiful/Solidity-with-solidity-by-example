// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract DataLocations{
    struct MyStruct{
        uint foo;
        string text;
    }
    mapping (address =>MyStruct)public myStructs;

    function examples()external{
        myStructs[msg.sender]=MyStruct({foo:123,text:"bar"});

        MyStruct storage myStruct=myStructs[msg.sender];
        myStruct.text="foo";

        MyStruct memory readOnly=myStructs[msg.sender];
        readOnly.foo=456;
    }
}