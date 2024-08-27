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
