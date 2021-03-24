@all
  Feature: Testing the underpayment amount summary page

    Scenario: A logged in representative is able make changes to all of their underpayment amounts
      Given I want to complete section 1: Service Entry
      And I want to complete section 2: Entry Details as Importer
      Then the user should be on the 'Tell us what was underpaid' page
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
      When the user clicks browser back
      Then the user should be on the 'Underpayment amount summary' page
      When the user clicks the 3rd change link for Excise Duty on the Underpayment amount summary page
      Then the user should be on the 'Excise Duty underpayment details' page
      When the user clicks browser back
      Then the user should be on the 'Underpayment amount summary' page
      When clicks the Continue button
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Supporting documentation' page
      And I want to complete section 5: Supporting Documentation
      Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
      And I want to complete section 6: Contact Details
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And I want to complete section 7: Deferment Details as Importer with no split
      Then the user should be on the 'Check your answers before sending your disclosure' page
      When clicks the Accept and send button
      Then the user should be on the 'Disclosure complete' page
