## Overview

Tjis a basic implementation of an ERC-20 token with minting, transfer, and burn functionalities.

### Public Variables:

- `TokenName`: The name of the token, set to "MEME".
- `TokenAbbrv`: The abbreviation for the token, set to "MEME".
- `totalSupply`: The total supply of tokens in circulation, initially set to 0.
- `owner`: The address of the owner of the contract, set to the deployer's address in the constructor.

### Mapping:

- `balances`: A mapping that stores the balance of each address in the token.

### Modifier:

`onlyOWner`: This modifier ensures that only the owner of the contract can call the functions it applies to.

### Error:

- `zeroAddress`: This custom error is used when someone tries to mint or transfer tokens to the zero address (invalid address).
- `insufficientFund`: This custom error is used when someone tries to transfer or burn more tokens than they have in their balance.

### Functions:

- `mint`: This function allows the owner to mint new tokens and send them to a specified address. It checks for zero address and updates the total supply and sender's balance accordingly.
- `transfer`: This function allows anyone to transfer tokens from their account to another address. It checks for sufficient balance and zero address before updating the balances.
- `burn`: This function allows the token holder to burn some of their tokens, reducing the total supply and their balance. It checks for sufficient balance before burning.
