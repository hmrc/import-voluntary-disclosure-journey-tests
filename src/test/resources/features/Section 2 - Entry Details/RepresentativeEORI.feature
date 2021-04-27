@all
  Feature: Testing whether a representative has an EORI

    Scenario: A Representative user logs in and declares that they do not have an EORI
      Given I want to complete section 1: Service Entry
      Then the user should be on the 'Are you the importer or their representative?' page
      And the user selects the Representative radio button
      When clicks the Continue button
      Then the user should be on the 'What is the importer’s name?' page
      And the user enters Test User into the importers name input field
      When clicks the Continue button
      Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
      And the user enters AA000AA into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the importer’s address' page
      When clicks the Confirm address button
      Then the user should be on the 'Does the importer have an EORI number?' page
      And the user selects the No radio button
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
      Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Is there only one customs procedure code for this entry?' page
      And the user selects the Yes radio button
      And clicks the Continue button
      Then the user should be on the 'What is the customs procedure code?' page
      And the user enters 1234A67 into the Customs procedure code input field
      When clicks the Continue button
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with B00~A00~E00
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Documents you must upload' page
      And I want to complete section 5: Documents you must upload
      Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
      And I want to complete section 6: Contact Details
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And I want to complete section 7: Deferment Details as Representative with no split
      Then the user should be on the 'Check your answers before sending your disclosure' page
      When clicks the Accept and send button
      Then the user should be on the 'Disclosure complete' page

    Scenario: A Representative user logs in and declares that they do have an EORI
      Given I want to complete section 1: Service Entry
      Then the user should be on the 'Are you the importer or their representative?' page
      And the user selects the Representative radio button
      When clicks the Continue button
      Then the user should be on the 'What is the importer’s name?' page
      And the user enters Test User into the importers name input field
      When clicks the Continue button
      Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
      And the user enters AA000AA into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the importer’s address' page
      When clicks the Confirm address button
      Then the user should be on the 'Does the importer have an EORI number?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'What is the importer’s EORI number?' page
      And the user enters GB345834921000 into the EORI input field
      When clicks the Continue button
      Then the user should be on the 'Is the importer VAT registered?' page
      And the user selects the Yes radio button
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
      Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Is there only one customs procedure code for this entry?' page
      And the user selects the No radio button
      And clicks the Continue button
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with B00~A00~E00
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Documents you must upload' page
      And I want to complete section 5: Documents you must upload
      Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
      And I want to complete section 6: Contact Details
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And I want to complete section 7: Deferment Details as Representative with no split
      Then the user should be on the 'Check your answers before sending your disclosure' page
      When clicks the Accept and send button
      Then the user should be on the 'Disclosure complete' page
