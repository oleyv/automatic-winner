Feature: Session Lock
  As a system administrator
  I want to ensure that user sessions are automatically locked after a period of inactivity
  So that unauthorized access to the system can be prevented

  Scenario: Automatic session lock after inactivity
    Given a system with user sessions
    When a user's session remains inactive for a specified period of time
    Then the system should automatically lock the user's session
    And the system should require re-authentication to unlock the session

  Scenario: User notification before session lock
    Given a system with user sessions
    When a user's session is about to be automatically locked due to inactivity
    Then the system should display a notification to the user about the impending session lock
    And the system should provide information about the remaining time before the lock occurs
    And the system should allow the user to continue the session by providing activity or confirming their presence

  Scenario: Configurable session lock timeout
    Given a system with user sessions
    When a user's session remains inactive for a specified period of time
    Then the system should lock the session based on a configurable timeout value
    And the system should allow system administrators to set and adjust the session lock timeout as per organizational requirements

  Scenario: System behavior during session lock
    Given a system with user sessions
    When a session is locked due to inactivity
    Then the system should clear any sensitive information or data associated with the locked session
    And the system should prevent any further user activity until the session is unlocked
    And the system should display a re-authentication prompt upon session unlock

  Scenario: Logging of session lock events
    Given a system with log management capability
    When a session is automatically locked due to inactivity
    Then the system should log the session lock event in the system logs
    And the system should include relevant information, such as user ID, timestamp, and the lock action

