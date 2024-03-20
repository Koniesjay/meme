// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MEME is ERC20 {
    address public owner;

    constructor() ERC20("MEME", "MME") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner of this contract");
        _;
    }

    function mint(uint value) public onlyOwner {
        _mint(msg.sender, value * 10 ** 18);
    }

    function transfer(address to, uint256 value) public virtual override returns(bool success){
        require(balanceOf(msg.sender) => value, "Not enough balance");
        success = super.transfer(to,value)
    }

    function burn(uint256 value) public {
        require(balanceOf(msg.sender) => value, "Not enough balance");
        _burn(msg.sender, value);
    }

}
