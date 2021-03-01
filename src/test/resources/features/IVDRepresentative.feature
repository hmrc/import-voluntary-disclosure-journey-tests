@all @representative

@ZAP
Feature: Representative submitting an Import Voluntary Disclosure on behalf of an Importer

  Background:
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Representative radio button
    When clicks the Continue button
    Then the user should be on the 'What is the importer’s name?' page
    And the user enters Test User into the importers name input field
    When clicks the Continue button

  Scenario: A logged in representative is able to walk through the flow of IVD and has an EORI - enters a post code,
  post code is automatically looked up, and user confirms address
    Then the user should be on the 'What address should we send the importer's copy of the demand note to?' page
    And the user enters AA000AA into the postcode input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the importer's address' page
    When clicks the Confirm address button
    Then the user should be on the 'Does the importer have an EORI number?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Does the importer have an EORI number?' page

  Scenario: A logged in representative is able to walk through the flow of IVD and doesn't have an EORI - enters a post
  code, multiple addresses are present, user selects an address, and confirms address
    Then the user should be on the 'What address should we send the importer's copy of the demand note to?' page
    And the user enters ZZ1 1ZZ into the postcode input field
    When clicks the Continue button
    Then the user should be on the 'Select the importer's address' page
    And the user selects the 2 Other Place, Some District, Anytown, Somerset, ZZ1 1ZZ radio button
    When clicks the Continue button
    Then the user should be on the 'Does the importer have an EORI number?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Does the importer have an EORI number?' page

  Scenario: A logged in representative is able to walk through the flow of IVD and doesn't have an EORI - enters
    address manually
    Then the user should be on the 'What address should we send the importer's copy of the demand note to?' page
    And the user clicks the enter address manually link
    Then the user should be on the 'Enter address' page
    And the user enters 21 some address into the address line one input field
    And the user enters some address into the address line two input field
    And the user enters some address into the address line three input field
    And the user enters Manchester into the town input field
    And the user enters ZZ1 1ZZ into the postcode input field
    When clicks the Continue button
    Then the user should be on the 'Confirm address' page
    When clicks the Confirm Address button
    Then the user should be on the 'Does the importer have an EORI number?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Does the importer have an EORI number?' page
