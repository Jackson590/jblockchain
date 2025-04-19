// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title HelloWorld
 * @dev Stores and manages a greeting message with event logging
 */
contract HelloWorld {
    string private greeting;
    
    // Event emitted when greeting is updated
    event GreetingUpdated(string newGreeting);
    
    /**
     * @dev Sets initial greeting message
     * @param _initialGreeting The initial greeting message
     */
    constructor(string memory _initialGreeting) {
        greeting = _initialGreeting;
        emit GreetingUpdated(_initialGreeting);
    }
    
    /**
     * @dev Updates the greeting message
     * @param _newGreeting The new greeting message
     */
    function setGreeting(string memory _newGreeting) public {
        require(bytes(_newGreeting).length > 0, "Greeting cannot be empty");
        greeting = _newGreeting;
        emit GreetingUpdated(_newGreeting);
    }
    
    /**
     * @dev Returns the current greeting message
     * @return The current greeting
     */
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}