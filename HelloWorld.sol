//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.12;

contract HelloWorld {
    string public message = "Hello World!";
    event Message(string message);

    //the keyword memory is used because it saves the variable _message in memory and not in the storage of the blockchain
    constructor(string memory _message) {
        message = _message;
    }

    // getMessage is a view function due to is not required to use gas to access the data
    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
        //Since version of solidity 0.8.12 is possible to concat strings using string.concat method
        emit Message(string.concat("Value changed to: ", message));
    }
}

