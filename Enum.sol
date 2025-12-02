// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Enum{
    enum Status{
        None,
        Pending,
        Shipped,
        Rejected,
        Canceled
    }
    Status public status;

    struct Order{
        address buyer;
        Status stutus;
    }

    Order[]public orders;

    function get() view external returns(Status){
        return status;
    }

    function set(Status _status)external {
        status=_status;
    }
    function ship()external {
        status=Status.Shipped;
    }

    function reset()external {
        delete status;
    }
}