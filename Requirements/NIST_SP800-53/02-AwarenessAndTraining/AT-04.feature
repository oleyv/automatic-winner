Feature: TRAINING RECORDS Control

  Scenario: Document and monitor information security and privacy training activities
    Given the information security and privacy training activities
    When the activities are conducted
    Then the activities shall be documented
    And the activities shall be monitored

  Scenario: Retain individual training records
    Given the [Assignment: organization-defined time period] for retaining individual training records
    When the specified time period is met
    Then the individual training records shall be retained
