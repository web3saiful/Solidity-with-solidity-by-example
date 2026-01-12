// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract VisibilityBase{
    uint private x=0;
    uint internal y=1;
    uint public z=2;

    function privateFunction()private pure returns(uint){

    }
    function internalFun()internal pure returns(uint){
    }

    function publicFunc()public pure returns(uint){

    }
    function externalFun()external pure returns(uint){

    }

    function examples()external view{
        x+y+z;
        privateFunction();
        internalFun();
        publicFunc();
        // externalFun(); NOt
        this.externalFun();
    }
}

contract VisibilityChild is VisibilityBase{
    function examples2() external view{
        y+z;
        internalFun();
        publicFunc();
    }
}









contract VisibilityChild is VisibilityBase{
    function examples2() external view{
        y+z;
        internalFun();
        publicFunc();
    }
}