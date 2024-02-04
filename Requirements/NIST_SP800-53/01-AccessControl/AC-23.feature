Feature: Data Mining Prevention and Detection
  As a system administrator
  I want to employ data mining prevention and detection techniques
  So that unauthorized data mining activities can be detected and protected against

  Scenario: Limiting database queries and responses
    Given the organization has defined data storage objects
    When performing database queries
    Then the system should limit the number and frequency of queries to increase the work factor required to determine the contents of databases
    And the system should restrict the types of responses provided to database queries to prevent unauthorized data mining

  Scenario: Application of differential privacy techniques or homomorphic encryption
    Given the organization has defined data storage objects
    When storing sensitive information in the databases
    Then the system should apply differential privacy techniques or homomorphic encryption to protect the privacy of the stored information
    And the system should ensure that the techniques used are organization-defined and meet the required security standards

  Scenario: Notification of atypical database queries or accesses
    Given the organization has defined data storage objects
    When monitoring database activities
    Then the system should notify authorized personnel when atypical database queries or accesses occur
    And the system should define and implement organization-specific criteria for determining what constitutes an atypical query or access

  Scenario: Consultation with senior agency official for privacy and legal counsel
    Given the organization engages in data mining activities
    When determining the authorization for such activities
    Then the organization should consult with the senior agency official for privacy and legal counsel to ensure compliance with applicable laws, regulations, and policies
    And the organization should document and maintain records of the consultation for auditing and compliance purposes

  Scenario: Insider threat program integration
    Given the organization has established an insider threat program
    When addressing data mining protection
    Then the organization should integrate data mining prevention and detection techniques into the insider threat program's activities
    And the organization should consider the safeguarding of sensitive information from exploitation, compromise, or unauthorized disclosure by insiders
