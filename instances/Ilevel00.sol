// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Instance {

    string public password;
    uint8 public infoNum = 42;
    string public theMethodName = 'The method name is method7123949.';
    bool private cleared = false;

    // constructor
    constructor(string memory _password) public {
        password = _password;
    }

    function authenticate(string memory passkey) public {
        if(keccak256(abi.encodePacked(passkey)) == keccak256(abi.encodePacked(password))) {
            cleared = true;
        }
    }
}
