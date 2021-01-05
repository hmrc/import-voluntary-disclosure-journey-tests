@all

Feature: Check the full flow of Import Voluntary Disclosure Journey

  @ZAP
  Scenario: A logged in user is able to walk through the flow of IVD
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page

