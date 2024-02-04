Feature: ROLE-BASED TRAINING Control

  Scenario: Provide role-based security and privacy training
    Given the personnel with the following roles and responsibilities: [Assignment: organization-defined roles and responsibilities]
    When authorizing access to the system, information, or performing assigned duties
    Then role-based security and privacy training shall be provided
    And the training shall be provided before authorization, and [Assignment: organization-defined frequency] thereafter

  Scenario: Update role-based training content
    Given the organization-defined frequency for updating role-based training content
    And the [Assignment: organization-defined events] occur
    When the specified frequency is met
    Then the role-based training content shall be updated

  Scenario: Incorporate lessons learned from security incidents or breaches
    Given internal or external security incidents or breaches occur
    When lessons are learned from these incidents or breaches
    Then the lessons shall be incorporated into role-based training

Feature: ROLE-BASED TRAINING | ENVIRONMENTAL CONTROLS

  Scenario: Provide training in the employment and operation of environmental controls
    Given the [Assignment: organization-defined personnel or roles]
    When the training is provided
    Then the personnel or roles shall receive initial training
    And the personnel or roles shall receive [Assignment: organization-defined frequency] training

Feature: ROLE-BASED TRAINING | PHYSICAL SECURITY CONTROLS

  Scenario: Provide training in the employment and operation of physical security controls
    Given the [Assignment: organization-defined personnel or roles]
    When the training is provided
    Then the personnel or roles shall receive initial training
    And the personnel or roles shall receive [Assignment: organization-defined frequency] training

Feature: ROLE-BASED TRAINING | PRACTICAL EXERCISES

  Scenario: Provide practical exercises in security and privacy training
    Given the need for practical exercises in security and privacy training
    When the exercises are conducted
    Then the exercises shall reinforce training objectives

Feature: ROLE-BASED TRAINING | PROCESSING PERSONALLY IDENTIFIABLE INFORMATION

  Scenario: Provide training in the employment and operation of personally identifiable information processing and transparency controls
    Given the [Assignment: organization-defined personnel or roles]
    When the training is provided
    Then the personnel or roles shall receive initial training
    And the personnel or roles shall receive [Assignment: organization-defined frequency] training

Feature: ROLE-BASED TRAINING | SUSPICIOUS COMMUNICATIONS AND ANOMALOUS SYSTEM BEHAVIOR

  Scenario: Provide training in the employment and operation of personally identifiable information processing and transparency controls
    Given the [Assignment: organization-defined personnel or roles]
    When the training is provided
    Then the personnel or roles shall receive initial training
    And the personnel or roles shall receive [Assignment: organization-defined frequency] training