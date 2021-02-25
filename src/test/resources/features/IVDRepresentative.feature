@all

Feature: Representative submitting an Import Voluntary Disclosure on behalf of an Importer

  @ZAP
  Scenario: A logged in representative is able to walk through the flow of IVD
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Representative radio button
    When clicks the Continue button
    Then the user should be on the 'What is the importer’s name?' page
    And the user enters Test User into the importers name input field
    When clicks the Continue button
    Then the user should be on the 'What is the importer’s name?' page
