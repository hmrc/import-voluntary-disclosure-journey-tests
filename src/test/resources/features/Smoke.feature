@smoke
  Feature: Smoke tests for Import Voluntary Disclosure

    Scenario: A user successfully submits their voluntary disclosure
      Then the user should be on the 'Are you the importer or their representative?' page
      And the user selects the Representative radio button
      And clicks the Continue button
      When clicks the Continue button
      Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
      And the user selects the One Entry radio button
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
      Then the user should be on the 'What have you underpaid?' page
      And they select the Customs Duty checkbox
      And they select the Import VAT checkbox
      And they select the Excise Duty checkbox
      When clicks the Continue button
      Then the user should be on the 'What have you underpaid?' page
