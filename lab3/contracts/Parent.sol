pragma solidity ^0.4.0;

import "Storage.sol";

contract Parent {

    function Parent() {

    }

    mapping(bytes32 => address) public stores;

    function createNewStorage(bytes32 key_) {
        var store = new Storage();
        stores[key_] = store;
    }

    function getStorage(bytes32 key_) constant returns (address) {
        return stores[key_];
    }
    
}