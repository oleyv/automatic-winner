Feature: TRAINING FEEDBACK Control

  Scenario: Provide feedback on organizational training results
    Given the [Assignment: organization-defined frequency] for providing feedback
    When the feedback is provided
    Then the feedback shall be provided to [Assignment: organization-defined personnel]