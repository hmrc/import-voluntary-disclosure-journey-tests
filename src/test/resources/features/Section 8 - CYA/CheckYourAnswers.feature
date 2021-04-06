@all @cya
  Feature: Testing check your answers

    Scenario: User navigates to check your answers
      Given I want to complete section 1: Service Entry
      And I want to complete section 2: Entry Details as Importer
      And I want to complete section 3: Underpayments with B00~A00
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      When clicks the Continue button
      Then the user should be on the 'What is the box number?' page
      And the user enters 22 into the Box Number input field
      When clicks the Continue button
      Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
      And the user enters EUR125.00 into the Original value input field
      And the user enters GBP190.50 into the Amended value input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the details of the reason for underpayment' page
      When clicks the Continue button
      Then the user should be on the 'You have added 1 reason for the underpayment' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Do you want to tell us anything else about the underpayment?' page
      And the user selects the No radio button
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
      Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
      And the user enters First last into the Name input field
      And the user enters email@email.com into the Email address input field
      And the user enters 0123456789 into the UK telephone number input field
      When clicks the Continue button
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And the user selects the Another payment method radio button
      When clicks the Continue button
      Then the user should be on the 'Check your answers before sending your disclosure' page
      And I check that within the Disclosure details summary that the value of Number of entries is One
      And I check that within the Disclosure details summary that the value of EPU is 123
      And I check that within the Disclosure details summary that the value of Entry number is 123456Q
      And I check that within the Disclosure details summary that the value of Entry date is 01 January 2020
      And I check that within the Disclosure details summary that the value of Entry acceptance date before 1 January 2021? is Yes
      And I check that within the Amendment details summary that the value of Customs procedure code is 1234A67
      And I check that within the Supporting documents summary that the value of 1 file uploaded is TestDocument.pdf
      And I check that within the Your details summary that the value of Name is First last
      And I check that within the Your details summary that the value of Email address is email@email.com
      And I check that within the Your details summary that the value of Telephone number is 0123456789
      And I check that within the Your details summary that the Address contains 1st line: 99 Avenue Road, 2nd line: Anyold Town, postcode: 99JZ 1AA and country: GB
      And I check that within the Payment information summary that the value of By deferment? is No
