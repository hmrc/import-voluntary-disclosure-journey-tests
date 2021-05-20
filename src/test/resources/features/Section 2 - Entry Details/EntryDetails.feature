@all

Feature: Checking the acceptance date flow through the service

  @ZAP
  Scenario: An Importer is able to walk through the flow of IVD
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the I am the importer radio button
    When clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
    And the user selects the One entry radio button
    When clicks the Continue button
    Then the user should be on the 'Entry details' page
    And the user enters 123 into the EPU number input field
    And the user enters 123456Q into the Entry number input field
    And the user enters 31 into the Entry date day input field
    And the user enters 12 into the Entry date month input field
    And the user enters 2020 into the Entry date year input field
    When clicks the Continue button
    Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
    And the user selects the Yes radio button
    And clicks the Continue button
    Then the user should be on the 'Is there only one customs procedure code for this entry?' page
    And the user selects the Yes radio button
    And clicks the Continue button
    Then the user should be on the 'What is the customs procedure code?' page
    And the user enters 1234A67 into the Customs procedure code input field
    When clicks the Continue button
    Then the user should be on the 'Tell us what was underpaid' page

  Scenario: A Representative is able to walk through the flow of IVD
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the I am a representative of the importer radio button
    When clicks the Continue button
    Then the user should be on the 'What is the name of the importer?' page
    And the user enters Test User into the importers name input field
    When clicks the Continue button
    Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
    And the user enters AA000AA into the postcode input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the importer’s address' page
    When clicks the Confirm address button
    Then the user should be on the 'Does the importer have an EORI number?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'What is the importer’s EORI number?' page
    And the user enters GB345834921000 into the EORI input field
    When clicks the Continue button
    Then the user should be on the 'Is the importer VAT registered?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
    And the user selects the One entry radio button
    When clicks the Continue button
    Then the user should be on the 'Entry details' page
    And the user enters 123 into the EPU number input field
    And the user enters 123456Q into the Entry number input field
    And the user enters 01 into the Entry date day input field
    And the user enters 01 into the Entry date month input field
    And the user enters 2021 into the Entry date year input field
    When clicks the Continue button
    Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Is there only one customs procedure code for this entry?' page
    And the user selects the No radio button
    And clicks the Continue button
    Then the user should be on the 'Tell us what was underpaid' page
