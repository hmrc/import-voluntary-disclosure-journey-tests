@all
  Feature: Testing the handoff to address lookup for capturing Representatives Address

    Scenario: An Importer navigates through the flow and enters their address
      Given I want to complete section 1: Service Entry for Organisation
      And I want to complete section 2: Entry Details as Importer
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with Import VAT (B00)~Customs Duty (A00)~Excise duty
      Then the user should be on the 'Next, tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Documents you must upload' page
      And I want to complete section 5: Documents you must upload - Document: TestDocument.pdf
      Then the user should be on the 'What are your contact details?' page
      And the user enters First last into the Name input field
      And the user enters email@email.com into the Email address input field
      And the user enters 0123456789 into the Telephone number input field
      When clicks the Continue button
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Find the address' page
      And the user enters AA000AA into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the address' page
      When clicks the Confirm address button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      When the user clicks the Back link
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Find the address' page
      And the user enters ZZ11ZZ into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Select the address' page
      And the user selects the 2 Other Place, Some District, Anytown, ZZ1 1ZZ radio button
      When clicks the Continue button
      Then the user should be on the 'Confirm the address' page
      When clicks the Confirm address button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      When the user clicks the Back link
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Find the address' page
      And the user clicks the Enter the address manually link
      Then the user should be on the 'Enter the address' page
      And the user enters 21 some address into the Address Line 1 input field
      And the user enters some address into the Address Line 2 input field
      And the user enters some address into the Address Line 3 input field
      And the user enters Manchester into the Town input field
      And the user enters ZZ1 1ZZ into the postcode input field
      And the user enters United Kingdom into the Country input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the address' page
      When clicks the Confirm address button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And I clear down the cookies

    Scenario: A Representative navigates through the flow and enters the importers address
      Given I want to complete section 1: Service Entry for Organisation
      And I want to complete section 2: Entry Details as Representative
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with Import VAT (B00)~Customs Duty (A00)~Excise duty
      Then the user should be on the 'Next, tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Documents you must upload' page
      And I want to complete section 5: Documents you must upload - Document: TestDocument.pdf
      Then the user should be on the 'What are your contact details?' page
      And the user enters First last into the Name input field
      And the user enters email@email.com into the Email address input field
      And the user enters 0123456789 into the Telephone number input field
      When clicks the Continue button
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Find the address' page
      And the user enters AA000AA into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the address' page
      When clicks the Confirm address button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      When the user clicks the Back link
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Find the address' page
      And the user enters ZZ11ZZ into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Select the address' page
      And the user selects the 2 Other Place, Some District, Anytown, ZZ1 1ZZ radio button
      When clicks the Continue button
      Then the user should be on the 'Confirm the address' page
      When clicks the Confirm address button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      When the user clicks the Back link
      Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Find the address' page
      And the user clicks the Enter the address manually link
      Then the user should be on the 'Enter the address' page
      And the user enters 21 some address into the Address Line 1 input field
      And the user enters some address into the Address Line 2 input field
      And the user enters some address into the Address Line 3 input field
      And the user enters Manchester into the Town input field
      And the user enters ZZ1 1ZZ into the postcode input field
      And the user enters United Kingdom into the Country input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the address' page
      When clicks the Confirm address button
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And I clear down the cookies
