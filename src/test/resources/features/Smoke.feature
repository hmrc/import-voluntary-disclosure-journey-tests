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
      Then the user should be on the 'Customs Duty underpayment details' page
      And the user enters 200 into the Original amount input field
      And the user enters 350 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Import VAT underpayment details' page
      And the user enters 440 into the Original amount input field
      And the user enters 520 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Excise Duty underpayment details' page
      And the user enters 390 into the Original amount input field
      And the user enters 425 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Underpayment amount summary' page
      When clicks the Continue button
