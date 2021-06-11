@all @bulk

Feature: Checking the bulk entry flow through the service

  Scenario: An Importer is able to walk through the bulk entry flow of IVD
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the I am the importer radio button
    When clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
    And the user selects the More than one entry radio button
    When clicks the Continue button
    Then the user should be on the 'When were the entry acceptance dates for all the entries?' page
    And the user selects the On or before 31 December 2020 radio button
    And clicks the Continue button
    Then the user should be on the 'Tell us what was underpaid' page
    And clicks the Continue button
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Excise Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Excise duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the excise duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the No radio button
    When clicks the Continue button
