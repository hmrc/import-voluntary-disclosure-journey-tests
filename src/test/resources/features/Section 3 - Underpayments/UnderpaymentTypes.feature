@all
  Feature: Testing the different types of underpayments

    Scenario: A user has declared that they have underpaid Import VAT
      Given I want to complete section 1: Service Entry
      And I want to complete section 2: Entry Details as Importer
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with B00
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Supporting documentation' page
      And I want to complete section 5: Supporting Documentation
      Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
      And I want to complete section 6: Contact Details
      Then the user should be on the 'How will you pay for the import VAT owed?' page
      And I want to complete section 7: Deferment Details as Importer with no split
      Then the user should be on the 'Check your answers before sending your disclosure' page
      When clicks the Accept and send button
      Then the user should be on the 'Disclosure complete' page

    Scenario: A user has declared that they have underpaid other duties
      Given I want to complete section 1: Service Entry
      And I want to complete section 2: Entry Details as Importer
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with A00
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Supporting documentation' page
      And I want to complete section 5: Supporting Documentation
      Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
      And I want to complete section 6: Contact Details
      Then the user should be on the 'How will you pay for the duty owed?' page
      And I want to complete section 7: Deferment Details as Importer with no split
      Then the user should be on the 'Check your answers before sending your disclosure' page
      When clicks the Accept and send button
      Then the user should be on the 'Disclosure complete' page

    Scenario: A user has declared that they have underpaid Import VAT and other duties
      Given I want to complete section 1: Service Entry
      And I want to complete section 2: Entry Details as Importer
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with B00~A00
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

