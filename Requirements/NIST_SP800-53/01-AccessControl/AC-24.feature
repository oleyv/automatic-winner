Feature: Access Control Decisions
  As a system administrator
  I want to establish procedures and implement mechanisms
  So that organization-defined access control decisions are applied to each access request prior to access enforcement

  Scenario: Transmitting access authorization information securely
    Given organization-defined access authorization information
    When transmitting the information
    Then the system should use organization-defined controls to securely transmit the access authorization information
    And the system should transmit the information to organization-defined systems responsible for enforcing access control decisions

  Scenario: Enforcing access control decisions without user or process identity
    Given organization-defined security or privacy attributes
    When enforcing access control decisions
    Then the system should enforce the decisions based on the defined attributes
    And the system should not include the identity of the user or process acting on behalf of the user in the access control decisions
