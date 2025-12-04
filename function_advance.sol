// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.10;


// /*
// calling parent functions
// -direct
// -super

//    E
//  /  \
// F   G
//  \ /
//   H
// */

// contract E{
//     event Log(string message);
//     function foo()public virtual {
//         emit Log("E.foo");
//     }
//     function bar()public virtual {
//         emit Log("E.bar");
//     }
// }
// contract F is E{
//     function foo()public virtual override {
//         emit Log("F.foo");
//         E.foo();
//     }
//     function bar()public virtual override {
//         emit Log("F.bar");
//         super.bar();
//     }
// }
// contract G is E{
//     function foo()public virtual override {
//         emit Log("G.bar");
//         E.foo();
//     }
//     function bar()public virtual override {
//         emit Log("G.bar");
//         super.bar();
//     }
// }
// contract H is F,G{
//     function foo() public override (F,G){
//         F.foo();
//     }
//     function bar()public override (F,G){
//         super.bar(); //all 
//     }
// }











// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/* Inheritance tree
   A
 /  \
B   C
 \ /
  D
*/

contract A {
    // This is called an event. You can emit events from your function
    // and they are logged into the transaction log.
    // In our case, this will be useful for tracing function calls.
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.bar called");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        super.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("C.bar called");
        super.bar();
    }
}



