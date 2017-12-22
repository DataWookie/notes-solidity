pragma solidity ^0.4.18;

contract FunctionParameters {
    // Two input parameters.
    //
    function f1(uint _i, uint _j) public {
    }

    // The output parameters can be declared with the same syntax after the returns keyword. 
    // For example, suppose we wished to return  one value: then we would write this:

    // One input parameter.
    // One output parameter.
    //
    function f2(uint _i) public returns (uint double) {
        double = _i * 2;
    }

    // One input parameter.
    // Two output parameters.
    //
    function f3(uint _i) public returns (uint double, uint treble) {
        double = _i * 2;
        treble = _i * 3;
    }

    // One input parameter.
    // Two output parameters (anonymous).
    //
    function f4(uint _i) public returns (uint, uint) {
        return (_i * 2, _i * 3);
    }
}
