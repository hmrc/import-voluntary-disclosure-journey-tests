@all

Feature: Representative submitting an Import Voluntary Disclosure on behalf of an Importer

  @ZAP
  Scenario: A logged in representative is able to walk through the flow of IVD
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Representative radio button
    And clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page

    #TODO - will need to be rebased and updated after the Entry Details flow has been merged
    Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
    And the user selects the Yes radio button
    And clicks the Continue button
    Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page

