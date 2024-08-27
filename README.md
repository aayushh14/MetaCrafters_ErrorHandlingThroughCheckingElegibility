# MetaCrafters_ErrorHandlingThroughCheckingElegibility
# Driving Eligibility Smart Contract
This Solidity smart contract determines if a user is eligible to drive based on their age. It demonstrates the use of require(), assert(), and revert() statements for error handling in Solidity.

# Description
The DrivingEligibility contract allows users to set their age and check if they are eligible to drive. The eligibility check is based on the age provided:

If the age is 18 or above, the user is eligible to drive.
If the age is below 18, the user is not eligible to drive and needs to apply for a driving license.
The contract implements basic error handling using require(), assert(), and revert():

# require() 
is used to ensure that the age is a positive number when setting it.
# assert() 
verifies that the age has been set to a valid value.
# revert() 
provides a specific error message if the user is below the driving age.
## Getting Started
Executing the Contract
To deploy and interact with this contract, you can use Remix, an online Solidity IDE. Follow these steps:

Access Remix:

Go to the Remix IDE at https://remix.ethereum.org/.
## Create a New File:

Click on the "+" icon in the left-hand sidebar to create a new file.
Save the file with a .sol extension (e.g., DrivingEligibility.sol).
Copy and Paste the Code:

Copy and paste the following Solidity code into your file:

solidity
Copy code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DrivingEligibility {
    // State variable to store the user's age
    uint256 public age;

    /// @notice Sets the user's age
    /// @param _age The age of the user
    function setAge(uint256 _age) public {
        // Ensure the age is a valid positive number
        require(_age > 0, "Age must be a positive number.");
        age = _age;
    }

    /// @notice Checks if the user is eligible to drive
    /// @return string message indicating if the user can drive or not
    function checkEligibility() public view returns (string memory) {
        // Assert that the age has been set
        assert(age > 0);

        if (age >= 18) {
            return "You are eligible to drive.";
        } else {
            revert("You are still a kid. Please apply for a driving license.");
        }
    }
}
## Compile the Code:

Click on the "Solidity Compiler" tab in the left-hand sidebar.
Set the "Compiler" option to 0.8.0 (or another compatible version).
Click on the "Compile DrivingEligibility.sol" button.
Deploy the Contract:

Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
Select the DrivingEligibility contract from the dropdown menu.
Click on the "Deploy" button.
Interact with the Contract:

After deployment, interact with the contract:
Use the setAge() function to set the user's age.
Call the checkEligibility() function to check if the user can drive.
