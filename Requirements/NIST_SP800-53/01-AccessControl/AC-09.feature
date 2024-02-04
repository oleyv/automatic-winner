Feature: Previous Logon Notification
  As a system administrator
  I want to ensure that users are notified about their previous successful and unsuccessful logon attempts
  So that they can identify any unauthorized access attempts or suspicious activities

  Scenario: Displaying previous logon notification upon login
    Given a system with user authentication mechanism
    When a user successfully logs in to the system
    Then the system should display a previous logon notification message
    And the system should present information about the user's previous successful and unsuccessful logon attempts
    And the system should provide details such as timestamps, IP addresses, and success/failure status

  Scenario: Configurable time window for previous logon notification
    Given a system with user logon records
    When a user logs in within a specified time window
    Then the system should display the previous logon notification with information about previous logon attempts within that time window
    And the system should allow administrators to configure the time window for displaying previous logon information

  Scenario: Notification for multiple unsuccessful logon attempts
    Given a system with user authentication mechanism
    When a user experiences multiple unsuccessful logon attempts
    Then the system should display a notification about the unsuccessful logon attempts
    And the system should provide information about the IP addresses or sources associated with those attempts
    And the system should recommend appropriate actions, such as password reset or contacting the system administrator

  Scenario: Periodic review of previous logon information
    Given a system with user logon records
    When periodic reviews are conducted
    Then the system should generate a report of users' previous logon information
    And the system should analyze the logon patterns and detect any anomalies or suspicious activities
    And the system should take appropriate actions based on the analysis, such as initiating further investigation or implementing additional security controls

  Scenario: Logging of previous logon notification events
    Given a system with log management capability
    When a previous logon notification is displayed to a user
    Then the system should log the event in the system logs
    And the system should include relevant information, such as user ID, timestamp, and the notification action
