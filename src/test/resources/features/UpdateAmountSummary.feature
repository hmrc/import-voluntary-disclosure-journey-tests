@all
  Feature: Testing the underpayment amount summary page

    Scenario: A logged in representative is able make changes to all of their underpayment amounts
      Given a user logs in to access the Import Voluntary Disclosure Service
      Then the user should be on the 'Are you the importer or their representative?' page
      And the user selects the Representative radio button
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
      And the user enters 450 into the Original amount input field
      And the user enters 500 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Excise Duty underpayment details' page
      And the user enters 500 into the Original amount input field
      And the user enters 550 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Underpayment amount summary' page
      And the Customs duty original amount is £200.00 on the Underpayment amount summary page
      And the Customs duty amended amount is £350.00 on the Underpayment amount summary page
      And the Customs duty due to HMRC amount is £150.00 on the Underpayment amount summary page
      And the Import VAT original amount is £450.00 on the Underpayment amount summary page
      And the Import VAT amended amount is £500.00 on the Underpayment amount summary page
      And the Import VAT due to HMRC amount is £50.00 on the Underpayment amount summary page
      And the Excise duty original amount is £500.00 on the Underpayment amount summary page
      And the Excise duty amended amount is £550.00 on the Underpayment amount summary page
      And the Excise duty due to HMRC amount is £50.00 on the Underpayment amount summary page
      When the user clicks the 1st change link for Customs Duty on the Underpayment amount summary page
      Then the user should be on the 'Customs Duty underpayment details' page
      And the user enters 250 into the Original amount input field
      And the user enters 300 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Import VAT underpayment details' page
      And the user enters 500 into the Original amount input field
      And the user enters 550 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Excise Duty underpayment details' page
      And the user enters 550 into the Original amount input field
      And the user enters 700 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Underpayment amount summary' page
      And the Customs duty original amount is £250.00 on the Underpayment amount summary page
      And the Customs duty amended amount is £300.00 on the Underpayment amount summary page
      And the Customs duty due to HMRC amount is £50.00 on the Underpayment amount summary page
      And the Import VAT original amount is £500.00 on the Underpayment amount summary page
      And the Import VAT amended amount is £550.00 on the Underpayment amount summary page
      And the Import VAT due to HMRC amount is £50.00 on the Underpayment amount summary page
      And the Excise duty original amount is £550.00 on the Underpayment amount summary page
      And the Excise duty amended amount is £700.00 on the Underpayment amount summary page
      And the Excise duty due to HMRC amount is £150.00 on the Underpayment amount summary page
      When the user clicks the 2nd change link for Import VAT on the Underpayment amount summary page
      Then the user should be on the 'Import VAT underpayment details' page
      When the user clicks the back link
      Then the user should be on the 'Underpayment amount summary' page
      When the user clicks the 3rd change link for Excise Duty on the Underpayment amount summary page
      Then the user should be on the 'Excise Duty underpayment details' page
      When the user clicks the back link
      Then the user should be on the 'Underpayment amount summary' page
      When clicks the Continue button
      Then the user should be on the 'Underpayment amount summary' page
