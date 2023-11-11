# Simple Coin Purchase Smart Contract

## Overview

This smart contract, named SimpleCoinPurchase, facilitates the purchase and transfer of custom coins on the blockchain. It demonstrates basic functionality for purchasing coins, checking the coin balance, and transferring coins between addresses.

## Contract Details

- Contract Name: SimpleCoinPurchase
- Solidity Version: ^0.8.13
- License: MIT

## Functions

### 1. purchaseCoins

This function allows users to purchase custom coins.

- Input Parameters:
  - amount: The amount of coins to purchase.
- Error Handling:
  - Requires that the purchase amount is greater than zero.

### 2. hasCoins

This function checks if the caller has any coins.

- Error Handling:
  - Asserts that the caller has a positive coin balance.

### 3. transferCoins

This function allows users to transfer coins to another address.

- Input Parameters:
  - recipient: The address to receive the coins.
  - amount: The amount of coins to transfer.
- Error Handling:
  - Requires that the transfer amount is greater than zero.
  - Requires that the caller has sufficient coins for the transfer.

## Events

- CoinsTransferred: Emits an event when coins are transferred, including sender, recipient, and amount.

## Statements Used

- *require Statement:*
  - Used to enforce conditions that must be true for the function to proceed.

- *assert Statement:*
  - Used for critical checks that should always evaluate to true. In this contract, it ensures the caller has a positive coin balance.

- *revert Statement:*
  - Used to trigger errormessages. In this contract, it is used to revert the current transaction and undo all changes made to the state

### Authors

Umesh khushappanor

umeshbkhushapppanor@gmail.com

## License

This smart contract is released under the MIT License.
