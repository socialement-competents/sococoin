pragma solidity ^0.4.21;

import "./Ownable.sol";

contract Whitelist is Ownable {
    mapping(address => bool) public whitelisted;

    event AddedToWhitelist(address _user);
    event RemovedFromWhitelist(address _user);

    constructor() public {
        whitelisted[msg.sender] = true;
        emit AddedToWhitelist(msg.sender);
    }

    modifier onlyWhitelist() {
        require(whitelisted[msg.sender]);
        _;
    }

    function addToWhitelist(address _user) public onlyOwner {
        whitelisted[_user] = true;
        emit AddedToWhitelist(_user);
    }

    function addSeveralToWhitelist(address[] _users) public onlyOwner {
        for (uint i = 0; i < _users.length; i++) {
            whitelisted[_users[i]] = true;
            emit AddedToWhitelist(_users[i]);
        }
    }

    function removeFromWhitelist(address _user) public onlyOwner {
        whitelisted[_user] = false;
        emit RemovedFromWhitelist(_user);
    }

    function removeSeveralFromWhitelist(address[] _users) public onlyOwner {
        for (uint i = 0; i < _users.length; i++) {
            whitelisted[_users[i]] = false;
            emit RemovedFromWhitelist(_users[i]);
        }
    }
}
