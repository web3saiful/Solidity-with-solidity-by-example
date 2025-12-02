// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract simple_view_pure{

// uint public count;

// function increment() public {
//     count = count + 1;   // state পরিবর্তন হচ্ছে
// }



// uint public count;

// function getCount() public view returns(uint) {
//     return count;   // শুধু পড়ছে (read-only)
// }

function add(uint a, uint b) public pure returns(uint) {
    return a + b;   // শুধু হিসাব, কোন স্টেট পড়ছে না বা লিখছে না
}



}