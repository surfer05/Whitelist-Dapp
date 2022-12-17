// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Whitelist{
    uint8 public maxWhiteListedAddress;
    mapping(address=>bool) public whitelistedAddresses;
    uint8 public numAddressesWhitelisted;
    constructor(uint8 _maxWhiteListedAddress){
        maxWhiteListedAddress = _maxWhiteListedAddress;        
    }
    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted.");
        require(numAddressesWhitelisted<maxWhiteListedAddress, "More addresses can't be added , limit reached.");
        whitelistedAddresses[msg.sender]=true;
        numAddressesWhitelisted+=1;
    }
}
