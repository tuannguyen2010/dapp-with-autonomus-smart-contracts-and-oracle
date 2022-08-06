pragma solidity ^0.4.25;

// It's important to avoid vulnerabilities due to numeric overflow bugs
// OpenZeppelin's SafeMath library, when used correctly, protects agains such bugs
// More info: https://www.nccgroup.trust/us/about-us/newsroom-and-events/blog/2018/november/smart-contract-insecurity-bad-arithmetic/

import "../node_modules/openzeppelin-solidity/contracts/math/SafeMath.sol";


contract ExerciseC6B {
    using SafeMath for uint256; // Allow SafeMath functions to be called for all uint256 types (similar to "prototype" in Javascript)

    uint256 private enabled = block.timestamp;

    uint256 private counter = 1; 

    // modifier rateLimit(uint time) {
    //     require(block.timestamp >= enabled, "Rate limiting in effect");
    //     enabled = enabled.add(time);
    //     _;
    // }

    // modifier entrancyGuard() {
    //     counter = counter.add(1);
    //     uint256 guard = counter;
    //     _;

    //     require(guard == counter, "That is not allowd");
    // }
    /********************************************************************************************/
    /*                                       DATA VARIABLES                                     */
    /********************************************************************************************/


    address private contractOwner;                  // Account used to deploy contract


    constructor
                (
                )
                public 
    {
        contractOwner = msg.sender;
    }
   
    /********************************************************************************************/
    /*                                       FUNCTION MODIFIERS                                 */
    /********************************************************************************************/

    // Modifiers help avoid duplication of code. They are typically used to validate something
    // before a function is allowed to be executed.

    /**
    * @dev Modifier that requires the "ContractOwner" account to be the function caller
    */
    modifier requireContractOwner()
    {
        require(msg.sender == contractOwner, "Caller is not contract owner");
        _;
    }

    /********************************************************************************************/
    /*                                     SMART CONTRACT FUNCTIONS                             */
    /********************************************************************************************/


    
}

