{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "/*\n",
    "Joint Savings Account\n",
    "---------------------\n",
    "\n",
    "To automate the creation of joint savings accounts, you will create a solidity smart contract that accepts two user addresses that are then able to control a joint savings account. Your smart contract will use ether management functions to implement various requirements from the financial institution to provide the features of the joint savings account.\n",
    "\n",
    "The Starting file provided for this challenge contains a `pragma` for solidity version `5.0.0`.\n",
    "You will do the following:\n",
    "\n",
    "1. Create and work within a local blockchain development environment using the JavaScript VM provided by the Remix IDE.\n",
    "\n",
    "2. Script and deploy a **JointSavings** smart contract.\n",
    "\n",
    "3. Interact with your deployed smart contract to transfer and withdraw funds.\n",
    "\n",
    "*/\n",
    "\n",
    "pragma solidity ^0.5.0;\n",
    "\n",
    "// Define a new contract named `JointSavings`\n",
    "contract JointSavings {\n",
    "    /*\n",
    "    Inside the new contract define the following variables:\n",
    "    - Two variables of type `address payable` named `accountOne` and `accountTwo`\n",
    "    - A variable of type `address public` named `lastToWithdraw`\n",
    "    - Two variables of type `uint public` named `lastWithdrawAmount` and `contractBalance`.\n",
    "    */\n",
    "    address payable accountOne;\n",
    "    address payable accountTwo;\n",
    "    address public lastToWithdraw;\n",
    "    uint public lastWithdrawAmount;\n",
    "    uint public contractBalance;\n",
    "    \n",
    "    /*\n",
    "    Define a function named **withdraw** that will accept two arguments.\n",
    "    - A `uint` variable named `amount`\n",
    "    - A `payable address` named `recipient`\n",
    "    */\n",
    "    function withdraw(uint amount, address payable recipient) public {\n",
    "\n",
    "        /*\n",
    "        Define a `require` statement that checks if the `recipient` is equal to either `accountOne` or `accountTwo`. The `requiere` statement returns the text `\"You don't own this account!\"` if it does not.\n",
    "        */\n",
    "        require(recipient == accountOne || recipient == accountTwo, \"You don't own this account!\");\n",
    "        \n",
    "        /*\n",
    "        Define a `require` statement that checks if the `balance` is sufficient to accomplish the withdraw operation. If there are insufficient funds, the text `Insufficient funds!` is returned.\n",
    "        */\n",
    "        require((lastWithdrawAmount <= contractBalance), \"Insufficient funds.\");\n",
    "        \n",
    "        /*\n",
    "        Add and `if` statement to check if the `lastToWithdraw` is not equal to (`!=`) to `recipient` If `lastToWithdraw` is not equal, then set it to the current value of `recipient`.\n",
    "        */\n",
    "        if (lastToWithdraw != recipient) {\n",
    "            lastToWithdraw = recipient;\n",
    "        }\n",
    "\n",
    "        // Call the `transfer` function of the `recipient` and pass it the `amount` to transfer as an argument.\n",
    "        recipient.transfer(amount);\n",
    "\n",
    "        // Set  `lastWithdrawAmount` equal to `amount`\n",
    "        lastWithdrawAmount = amount;\n",
    "\n",
    "        // Call the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance` to reflect the new balance of the contract.\n",
    "        contractBalance = address(this).balance;\n",
    "    }\n",
    "\n",
    "    // Define a `public payable` function named `deposit`.\n",
    "    function deposit() public payable {\n",
    "\n",
    "        /*\n",
    "        Call the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance`.\n",
    "        */\n",
    "        contractBalance = address(this).balance;\n",
    "    }\n",
    "\n",
    "    /*\n",
    "    Define a `public` function named `setAccounts` that receive two `address payable` arguments named `account1` and `account2`.\n",
    "    */\n",
    "    function setAccounts(address payable account1, address payable account2) public {\n",
    "        // Set the values of `accountOne` and `accountTwo` to `account1` and `account2` respectively.\n",
    "        accountOne = account1;\n",
    "        accountTwo = account2;\n",
    "    }\n",
    "\n",
    "    /*\n",
    "    Finally, add the **default fallback function** so that your contract can store Ether sent from outside the deposit function.\n",
    "    */\n",
    "    function() external payable {\n",
    "    }\n",
    "}"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
