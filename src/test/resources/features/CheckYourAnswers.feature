@all
  Feature: Testing check your answers

    Scenario: User navigates to check your answers
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
      Then the user should be on the 'What is the customs procedure code?' page
      And the user enters 1234A67 into the Customs procedure code input field
      When clicks the Continue button
      Then the user should be on the 'Has the customs procedure code changed?' page
      And the user selects the No radio button
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
      And the user enters 440 into the Original amount input field
      And the user enters 520 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Excise Duty underpayment details' page
      And the user enters 390 into the Original amount input field
      And the user enters 425 into the Amended amount input field
      When clicks the Continue button
      Then the user should be on the 'Underpayment amount summary' page
      When clicks the Continue button
      Then the user should be on the 'Supporting documentation' page
      When clicks the Continue button
      Then the user should be on the 'Upload supporting documentation' page
      And I get the data from the page
      And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
      And I call the success redirect
      Then the user should be on the 'Upload progress' page
      And I call the upscan callback handler and get response 204
      And clicks the Refresh button
      Then the user should be on the 'You have uploaded 1 file' page
      And there should be '1' files on the page
      And the user selects the No radio button
      And clicks the Continue button
      Then the user should be on the 'What are your contact details?' page
      And the user enters First last into the Name input field
      And the user enters email@email.com into the Email address input field
      And the user enters 0123456789 into the UK telephone number input field
      When clicks the Continue button
      Then the user should be on the 'Is this your correct address?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Are you paying by deferment?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Check your answers before sending your disclosure' page
      #TODO Check Disclosure Details summary
      And I check that within the Disclosure details summary that the value of Number of entries is One
      And I check that within the Disclosure details summary that the value of EPU is 123
      And I check that within the Disclosure details summary that the value of Entry number is 123456Q
      And I check that within the Disclosure details summary that the value of Entry date is 31 December 2020
      #TODO Check Underpayment Details summary
      And I check that within the Underpayment details summary that the value of Customs Duty is £150
      And I check that within the Underpayment details summary that the value of Import VAT is £80
      And I check that within the Underpayment details summary that the value of Excise Duty is £35
      #TODO Check Supporting Documents summary
      And I check that within the Supporting documents summary that the value of 1 file uploaded is TestDocument.pdf
      #TODO Check Your Details summary
      And I check that within the Your details summary that the value of Name is First last
      And I check that within the Your details summary that the value of Email address is email@email.com
      And I check that within the Your details summary that the value of Telephone number is 0123456789
      And I check that within the Your details summary that the value of 1st Line Address is 99 Avenue Road
      And I check that within the Your details summary that the value of 2nd Line Address is Anyold Town
      And I check that within the Your details summary that the value of Postcode is 99JZ 1AA
      And I check that within the Your details summary that the value of Country is United Kingdom
      #TODO Check Payment Information summary
      And I check that within the Payment information summary that the value of By deferment? is No