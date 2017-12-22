contract dataTypesContract {
    // uint: a 32 byte (256 bit) unsigned integer
    //
    uint i;
    uint256 j = 42;                                             // uint256 is an alias for uint
    //
    // There are a variety of smaller types: uint8, uint16, uint24... uint256.

    // int: a 32 byte (256 bit) signed integer
    //
    int k;
    int256 l;                                                   // int256 is an alias for int
    //
    // There are a variety of smaller types: int8, int16, int24... int256.

    // Declaring a variable as a constant.
    //
    // Constant variables are replaced by their value at compile time.
    //
    int constant version = 8;

    // Explicit typecasting.
    //
    i = uint(k);

    // byte: a single byte
    //
    byte one_byte;                                              // byte is an alias for bytes1
    //
    // There are also bytes2, bytes3... bytes32.

    // Boolean.
    //
    bool the_truth = true; 

    // address: a 20 byte (160 bit) Ethereum address
    //
    address public owner;

    // string: a UTF8 string
    //
    string greeting = "Hello World!"; 

    // Array
    //
    uint[5] static_array;                                       // Array of fixed length
    uint[] dynamic_array;                                       // Array of variable length
    //
    // Array methods and attributes
    //
    dynamic_array.push(5)                                       // Returns new length of array
    dynamic_array.length

    // Dictionary
    //
    mapping (address => uint) public balances;

    // Enumeration
    //
    enum State {
        PENDING,
        ACTIVE,
        INACTIVE,
        DELETED
    }; 
    //
    State public current_state = State.PENDING;
    //
    // The underlying representation for enum is an unsigned integer.
}