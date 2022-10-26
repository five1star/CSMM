//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract CsmmExchange {
    IERC20 public token;

    constructor(IERC20 _token){
        token = _token;
    }

    function addLiquidity(uint256 _tokenAmount) public payable {
        token.transferFrom(msg.sender, address(this), _tokenAmount);
    }

    function ethToTokenSwap() public payable {
        uint256 outputAmount = msg.value;
        token.transfer(msg.sender, outputAmount);
    }

}