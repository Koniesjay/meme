# MEME Token Contract

The MEME token contract is a Solidity smart contract that implements the ERC20 standard for a basic fungible token. It allows for the creation, transfer, and destruction of tokens on the Ethereum blockchain.

# Features

ERC20 Compatibility
The MEME token contract is compatible with the ERC20 standard, allowing it to be used with a wide range of wallets, exchanges, and other smart contracts that support ERC20 tokens.

# Minting

The contract includes a mint function that allows the owner of the contract to create new tokens. Only the owner address specified during contract deployment can call this function.

# Burning

The contract includes a burn function that allows token holders to destroy their tokens, effectively removing them from circulation. This function can be called by any token holder.

# Ownership

The contract includes an owner variable to track the address of the contract owner. Certain functions, such as mint, are restricted to be called only by the owner of the contract.
