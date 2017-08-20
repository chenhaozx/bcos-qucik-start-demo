pragma solidity ^0.4.2;

contract SimpleStartDemo {
    int256 storedData;
    event AddMsg(address indexed sender, bytes32 msg);
    function SimpleStartDemo() {
        storedData = 2;
    }

    function set(int256 x) public{
        storedData = x;
        AddMsg(msg.sender, "in the set");
    }

    function get() constant public returns (int256 _ret) {
        AddMsg(msg.sender, "in the get");
        return _ret = storedData;
    }
}
