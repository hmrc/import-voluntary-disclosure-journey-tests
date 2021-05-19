@all @representative

@ZAP
Feature: Testing the handoff to address lookup for capturing Representatives Address

  Scenario: A Representative supplies their address details and completes the flow
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
    When the user clicks the Back link
    Then the user should be on the 'What is the name of the importer?' page
    When clicks the Continue button
    Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
    And the user enters ZZ11ZZ into the postcode input field
    When clicks the Continue button
    Then the user should be on the 'Select the importer’s address' page
    And the user selects the 2 Other Place, Some District, Anytown, ZZ1 1ZZ radio button
    When clicks the Continue button
    Then the user should be on the 'Confirm the importer’s address' page
    When clicks the Confirm address button
    Then the user should be on the 'Does the importer have an EORI number?' page
    When the user clicks the Back link
    Then the user should be on the 'What is the name of the importer?' page
    When clicks the Continue button
    Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
    And the user clicks the Enter the address manually link
    Then the user should be on the 'Enter the importer’s address' page
    And the user enters 21 some address into the Address Line 1 input field
    And the user enters some address into the Address Line 2 input field
    And the user enters some address into the Address Line 3 input field
    And the user enters Manchester into the Town input field
    And the user enters ZZ1 1ZZ into the postcode input field
    And the user enters United Kingdom into the Country input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the importer’s address' page
    When clicks the Confirm address button
    Then the user should be on the 'Does the importer have an EORI number?' page
