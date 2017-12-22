pragma solidity ^0.4.18;

contract SpecialVariables {
    // MESSAGE PROPERTIES
    //
    // The following variables pertain to the current interaction with a contract.
    //
    // msg.data         - The complete call data.           (type: bytes)
    // msg.gas          - Remaining gas.                    (type: uint)
    // msg.sender       - Message sender.                   (type: address)
    // msg.sig          - First 4 bytes of the call data.   (type: bytes4)
    // msg.value        - Number of Wei sent with message.  (type: uint)

    // TRANSACTION PROPERTIES
    //
    // tx.gasprice      - Transaction gas price.            (type: uint)
    // tx.origin        - Transaction sender.               (type: address)

    // BLOCK PROPERTIES
    //
    // The following variables pertain to the current block.
    //
    // block.coinbase   - Address of the miner.             (type: address)
    // block.difficulty - Difficulty.                       (type: uint)
    // block.gaslimit   - Gas limit.                        (type: uint)
    // block.number     - Block number.                     (type: uint)
    // block.timestamp  - Timestamp.                        (type: uint)
}