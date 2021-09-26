pragma solidity ^0.5.11;

//Import Contract and integrate with Modifier__..... .sol
contract Owned {
    address owner;
    constructor() public {
    owner = msg.sender;
    }
    modifier onlyOwner {
    require(msg.sender == owner, "You are not allowed");
    _;
    }
}
