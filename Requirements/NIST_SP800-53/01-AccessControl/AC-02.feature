Feature: Organizational Processes for Account Management

  Scenario: User Registration
    Given a new user wanting to create an account
    When the user provides the required registration information
    Then the system creates a new account for the user
    And the user receives a confirmation email with account details

  Scenario: Account Activation
    Given a user with a pending account
    When the user clicks on the account activation link
    Then the system activates the user's account
    And the user can log in and access the system

  Scenario: User Profile Management
    Given a logged-in user
    When the user navigates to their profile settings
    Then the user can view and update their account information
    And the changes are saved in the system

  Scenario: Account Suspension
    Given an administrator with the authority to suspend user accounts
    When the administrator identifies a user account to suspend
    Then the system suspends the user's account
    And the user is notified about the account suspension

  Scenario: Account Termination
    Given an administrator with the authority to terminate user accounts
    When the administrator identifies a user account to terminate
    Then the system terminates the user's account
    And all associated data and privileges are revoked

  Scenario: Account Permissions Management
    Given an administrator with the authority to manage user permissions
    When the administrator assigns or revokes permissions for a user account
    Then the system updates the user's permissions accordingly
    And the user's access to system features is adjusted

  Scenario: Account Recovery
    Given a user with a forgotten username or email
    When the user requests account recovery
    Then the system guides the user through a recovery process
    And the user can regain access to their account

  Scenario: User Account Deletion
    Given a user with an active account
    When the user requests to delete their account
    Then the system prompts the user for confirmation
    And if confirmed, the system permanently deletes the user's account and associated data
