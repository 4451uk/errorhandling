// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleCoinPurchase {
    
    mapping(address => uint256) public balances;

    event CoinsTransferred(address sender, address recipient, uint256 amount);

    // Function to purchase coins
    function purchaseCoins(uint256 amount) public {
        require(amount > 0, "Purchase amount must be greater than zero");

        // Simulate coin transfer to the buyer
        balances[msg.sender] += amount;

        emit CoinsTransferred(address(0), msg.sender, amount);
    }

    // Function to check if the buyer has any coins
    function hasCoins() public view returns (string memory) {
        assert(balances[msg.sender] > 0);
        return "You have coins.";
    }

    // Function to transfer coins to another address
    function transferCoins(address recipient, uint256 amount) public {
        require(amount > 0, "Transfer amount must be greater than zero");
        require(amount <= balances[msg.sender], "Insufficient coins for transfer");

        // Simulate coin transfer
        balances[msg.sender] -= amount;
        balances[recipient] += amount;

        emit CoinsTransferred(msg.sender, recipient, amount);
    }
}
