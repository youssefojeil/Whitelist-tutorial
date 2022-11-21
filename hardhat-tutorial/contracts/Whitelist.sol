// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Whitelist {

    // max number of addresses which can be WL
    uint8 public maxWhiteListedAddresses;
    
    // keep track of number of addresses whitelisted till now
    // uint8 initializes to 0
    uint8 public numAddressesWhiteListed;
    
    // every address by default is set to false
    // this is a HashMap
    mapping(address => bool) public whiteListedAddresses;

    constructor(uint8 _maxWhiteListedAddresses) {
        maxWhiteListedAddresses = _maxWhiteListedAddresses;
    }

    function addAddressToWhitelist() public {

        // checks if user who called this function is already in whitelist
        // if require is true, give an error
        require(!whiteListedAddresses[msg.sender], "Sender already in the whitelist");
        require(numAddressesWhiteListed < maxWhiteListedAddresses, "Max limit reached");
        
        // if address isnt in whitelist, add to whitelist and + 1
        whiteListedAddresses[msg.sender] = true;
        numAddressesWhiteListed += 1;
    }


}