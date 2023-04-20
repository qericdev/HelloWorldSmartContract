# HelloWorld Contract

The `HelloWorld` contract is a simple Solidity smart contract that stores and retrieves a message on the Ethereum blockchain. It also emits an event when the message is updated.

## Features

- Initialize the contract with a custom message
- Get the current message
- Set a new message
- Emit an event when the message is updated

## Contract

The contract is written using Solidity version 0.8.12.

### State Variables

- `message`: A public string variable that stores the current message.

### Events

- `Message`: An event that is emitted when the message is updated, including the concatenated string "Value changed to: " followed by the new message.

### Constructor

- `constructor(string memory _message)`: Initializes the contract with a custom message.

### Functions

- `getMessage()`: A public view function that returns the current message.
- `setMessage(string memory _message)`: A public function that sets a new message and emits the `Message` event.

## Usage

1. Deploy the contract with a custom message.
2. Call `getMessage()` to retrieve the current message.
3. Call `setMessage()` with a new message to update the message and emit the `Message` event.

## License

This contract is licensed under the MIT License.