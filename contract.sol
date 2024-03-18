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

    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }

}
