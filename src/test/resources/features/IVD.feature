@all

Feature: Check the full flow of Import Voluntary Disclosure Journey

  @ZAP
  Scenario: A logged in user is able to walk through the flow of IVD
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Importer radio button
    When clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
    And the user selects the One Entry radio button
    When clicks the Continue button
    Then the user should be on the 'Entry details' page
    And the user enters 123 into the EPU number input field
    And the user enters 123456Q into the Entry number input field
    And the user enters 01 into the Entry date day input field
    And the user enters 01 into the Entry date month input field
    And the user enters 2021 into the Entry date year input field
    When clicks the Continue button
    Then the user should be on the 'What have you underpaid?' page
    And they select the Customs Duty checkbox
    And they select the Import VAT checkbox
    And they select the Excise Duty checkbox
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details' page
    And the user enters 200 into the Original amount input field
    And the user enters 350 into the Amended amount input field
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details' page
