Feature: Reference Monitor
  As a system administrator
  I want to implement a tamperproof reference monitor
  So that organization-defined access control policies are enforced

  Scenario: Tamperproof reference monitor
    Given the system has organization-defined access control policies
    When implementing the reference monitor
    Then the reference monitor should be tamperproof
    And the tamperproof property should prevent determined adversaries from compromising the functioning of the reference validation mechanism

  Scenario: Always invoked reference monitor
    Given the system has organization-defined access control policies
    When implementing the reference monitor
    Then the reference monitor should always be invoked
    And the always invoked property should prevent adversaries from bypassing the mechanism and violating the security policy

  Scenario: Smallness of the reference monitor
    Given the system has organization-defined access control policies
    When implementing the reference monitor
    Then the reference monitor should be small enough to be subject to analysis and testing
    And the smallness property should ensure completeness in the analysis and testing of the mechanism to detect weaknesses or deficiencies