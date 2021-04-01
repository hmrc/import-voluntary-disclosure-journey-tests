@all @underpayments @alexa

@ZAP
Feature: Check the flow of the Underpayments journey

  Scenario: A logged in importer is able make changes to get to the Underpayments section
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    When clicks the Continue button

    Scenario: A logged in importer is able to add Import VAT underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Import VAT radio button
    When clicks the Continue button
    Then the user should be on the 'Import VAT underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Customs Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Excise Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Excise Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Excise duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the excise duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Additional Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Additional Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Additional Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Additional Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Definitive Anti-Dumping Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Definitive Anti-Dumping Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Definitive Anti-Dumping Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Definitive Anti-Dumping Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Provisional Anti-Dumping Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Provisional Anti-Dumping Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Provisional Anti-Dumping Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Provisional Anti-Dumping Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Definitive Countervailing Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Definitive Countervailing Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Definitive Countervailing Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Definitive Countervailing Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Customs Duty on Agricultural Products underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty on Agricultural Products radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty on Agricultural Products underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty on Agricultural Products underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

  Scenario: A logged in importer is able to add Compensatory Duty underpayment
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Compensatory Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Compensatory Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Compensatory Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    When clicks the Continue button
