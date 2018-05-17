pragma solidity ^0.4.21;

import "./OwnableERC20.sol";

contract SocoCoin is OwnableTokenERC20 {
    constructor () OwnableTokenERC20(
        0,
        "SocoCoin",
        "SOCO"
    ) public {}

    // Mint tokens
    function reward(address _target, uint256 amount) public onlyOwner {
        // Mint some tokens out of thin air
        balanceOf[_target] += amount;
        // Update the total supply
        totalSupply += amount;
        // Indicate that the owner got [amount] minted tokens and sent it to [_target]
        emit Transfer(0, owner, amount);
        emit Transfer(owner, _target, amount);
    }

    function claimReward(uint256 amount) public {
        balanceOf[msg.sender] += amount;
        totalSupply += amount;
        emit Transfer(0, owner, amount);
        emit Transfer(owner, msg.sender, amount);
    }
}
