Feature: Session Termination
  As a system administrator
  I want to ensure that user sessions are properly terminated after a predefined time or upon user request
  So that unauthorized access and potential session hijacking can be prevented

  Scenario: Automatic session termination after predefined time
    Given a system with user sessions
    When a user's session exceeds a predefined time limit
    Then the system should automatically terminate the user's session
    And the system should clear any sensitive information or data associated with the terminated session
    And the system should display a notification to the user indicating the session termination

  Scenario: User-initiated session termination
    Given a system with user sessions
    When a user requests to terminate their session
    Then the system should immediately terminate the user's session
    And the system should clear any sensitive information or data associated with the terminated session
    And the system should display a notification to the user indicating the session termination

  Scenario: User notification before session termination
    Given a system with user sessions
    When a user's session is about to be terminated
    Then the system should display a notification to the user about the impending session termination
    And the system should provide information about the remaining time before the termination occurs
    And the system should allow the user to extend the session or take necessary actions to prevent termination if desired

  Scenario: Configurable session termination time
    Given a system with user sessions
    When a user's session exceeds a predefined time limit
    Then the system should terminate the session based on a configurable time limit
    And the system should allow system administrators to set and adjust the session termination time as per organizational requirements

  Scenario: Logging of session termination events
    Given a system with log management capability
    When a session is terminated, either automatically or upon user request
    Then the system should log the session termination event in the system logs
    And the system should include relevant information, such as user ID, timestamp, and the termination action
