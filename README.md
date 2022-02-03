 ![header](https://capsule-render.vercel.app/api?type=waving&color=gradient&width=1000&height=200&section=header&text=Joint%20Savings%20Account%20With%20Solidity%20&fontSize=30&fontColor=black)

<!-- header is made with: https://github.com/kyechan99/capsule-render -->

[John Sung](https://linkedin.com/in/john-sung-3675569) [<img src="https://cdn2.auth0.com/docs/media/connections/linkedin.png" alt="LinkedIn -  John Sung" width=15/>](https://linkedin.com/in/john-sung-3675569/)
                                 
---

### Table of Contents

* [Overview](#overview)
* [Requirements](#requirements)
* [User Experience](#user-experience)
* [Visualization](#visualization)
* [License](#license)  

---

## Overview

This program was designed to automate the creation of a joint savings accounts with the use of Solidity. This smart contract will use ether management functions to implement a financial institution’s requirements for providing the features of the joint savings account. These features will consist of the ability to deposit and withdraw funds from the account.

---

## Requirements


This project leverages python 3.7 and Streamlit, hashlib, web3, eth-tester, mnemonic and bip44.

The following libraries were used:

* [pandas](https://pandas.pydata.org/docs/) - *version 1.3.2* - This was used to be able to easily manipulate dataframes and create dataframes.

* [hashlib](https://docs.python.org/3/library/hashlib.html)- This module implements a common interface to many different secure hash and message digest algorithms. In our application, we use SHA256 to return a hexdigest.

* [web3.py](https://web3py.readthedocs.io/en/stable/overview.html) - This is a Python library for connecting to and performing operations on Ethereum-based blockchains.

* [Solidity](https://docs.soliditylang.org/en/v0.8.9/) - This is used to create the smart contract and implement the joints saving application to work with ether.

* [Remix IDE](https://remix.ethereum.org/) - This is used to be able to write and edit solidity formatted code, and this is where the joints saving application will be launched.
  
---

## User Experience

Once you clone the file from this repository, launch REMIX IDE to view and edit the joint_savings.sol file. Then when on the REMIX IDE, click on the left icon logo, and then click Open file and navigate to where the git clone files are locally saved on your machine.

---

## Visualization

### Compile the `joint_savings.sol` file and make sure that the compiler is version 0.5.0.

![Compile](Execution_Results/compile.png)

### Compile the Contract in the "JavaScript VM", once this is done, then click Deploy.

![Deploy](Execution_Results/deploy.png)

#### **Send 1 ether as wei**

![Send 1 ether](Execution_Results/deposit_1_ether_in_wei.PNG)

#### **Send 10 ether as wei**

![Send 10 ether](Execution_Results/deposit_10_ether_in_wei.PNG)

#### **Send 5 ether**

![Send 5 ether](Execution_Results/deposit_5_ether.PNG)

#### **Withdraw 5 ether into account1**
![Withdraw 5 ether](Execution_Results/withdraw_5_ether.PNG)

#### **Withdraw 10 ether into account2**
![Withdraw 10 ether](Execution_Results/withdraw_10_ether.PNG)

---

## License

MIT License

Copyright (c) 2022 John Sung

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

