@all

Feature: Representative submitting an Import Voluntary Disclosure on behalf of an Importer

  @ZAP
  Scenario: A logged in representative is able to walk through the flow of IVD
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Representative radio button
    When clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
    And the user selects the One Entry radio button
    When clicks the Continue button
    Then the user should be on the 'Entry details' page
    And the user enters a EPU number into the 123 input field
    And the user enters a Entry number into the 123456Q input field
    And the user enters a Entry date day into the 01 input field
    And the user enters a Entry date month into the 01 input field
    And the user enters a Entry date year into the 2020 input field
    When clicks the Continue button
    Then the user should be on the 'Entry details' page

