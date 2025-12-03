// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Fallback{
                 send Ether
                      |
           msg.data is empty?
                /           \
            yes             no
             |                |
    receive() exists?     fallback()
        /        \
     yes          no
      |            |
  receive()     fallback()
}

