// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract Gontar {

    // public variables here
    string public TokenName = "MEME";
    string public TokenAbbrv = "MEME";
    uint public totalSupply;
    address private owner;

    // mapping variable here
    mapping (address => uint) public balances;

    modifier onlyOWner {
        require(owner == msg.sender,"Not Owner");
        _;
    }

    error zeroAddress();
    error insufficientFund(string fund);

    constructor() {
        owner = msg.sender;
    }

    // mint function

    function mint(address _to, uint _value) public onlyOWner {
        if(_to == address(0)) revert zeroAddress();
        totalSupply += _value;
        balances[_to] += _value;
    }

    function transfer(address _to, uint _value) public {
        if(balances[msg.sender] < _value) revert insufficientFund("Not enough MEME to perform this transaction");
        if(_to == address(0)) revert zeroAddress();
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }

    // burn function

    function burn(uint _value) public {
        if (balances[msg.sender] < _value){
        revert insufficientFund("msg.sender can't burn more than balance");
        }

        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}