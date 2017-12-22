pragma solidity ^0.4.18;

// Import any files that are dependencies.
//
import "dependency-file.sol";

contract BaseContract {
    // State variables
    //
    address creator;
    mapping (address => uint) public balances;
 
    // Constructor
    //
    // - has same name as contract
    // - can have arguments
    // - used to initialise state variables
    //
    function ExampleContract() public {
        creator = msg.sender;
    }

    modifier onlyCreator() {
        require(msg.sender == creator);
        _;
    }

    function kill() public onlyCreator { 
        selfdestruct(creator);  
    }

    // Define an interface. Should be implemented in a derived contract.
    //
    function action(uint _number) public returns (bool);
}

contract DerivedContract is BaseContract {
    uint public counter = 0;

    // Events
    //
    event Action(uint _number);

    function DerivedContract() public {
    }

    // @notice Perform some action
    // @param _number A number
    // @return Whether the action was successful or not
    function action(uint _number) public returns (bool) {
        Action(_number);
    }
}