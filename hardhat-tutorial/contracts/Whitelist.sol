// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Whitelist {

    // max number of addresses which can be WL
    uint8 public maxWhiteListedAddresses;
    
    // keep track of number of addresses whitelisted till now
    // uint8 initializes to 0
    uint8 public numAddressesWhiteListed;
    
    // every address by default is set to false
    // this is a hashmap
    mapping(address => bool) public whiteListedAddresses;

    constructor(uint8 _maxWhiteListedAddresses) {
        maxWhiteListedAddresses = _maxWhiteListedAddresses;
    }


}