@all @deferment
Feature: Testing Deferments for importers and representatives

  Scenario: Importer declares that they have import VAT and other duties, selects to pay via another payment method,
  and is redirected to check your answers
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the Another payment method radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Importer declares that they have import VAT and other duties, selects to pay by duty deferment account,
  and is redirected to the enter DAN flow
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'What is the deferment account number?' page
    And the user enters 0123456 into the Deferment account number input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Importer declares that they only have other duties, selects to pay by duty deferment account,
  and is redirected to the enter DAN flow
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'What is the deferment account number?' page
    And the user enters 0123456 into the Deferment account number input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they have import VAT and other duties, selects to pay via another payment method,
  and is redirected to check your answers
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the Another payment method radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they have import VAT and other duties, selects to split by two deferment accounts,
  selects My deferment account for duty
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Do you want to split payment between two deferment accounts?' page
    And the user selects the Yes, I want to use two deferment accounts radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details for the duty owed' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the My deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details for the import VAT owed' page
    And the user enters 7654321 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Upload proof of authority to use this deferment account' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler and get response 204
    And clicks the Refresh button
    Then the user should be on the 'The file has been uploaded successfully' page
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they have import VAT and other duties, selects to pay by duty deferment account,
  and is redirected to the split payments flow - chooses to pay by two deferment accounts
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Do you want to split payment between two deferment accounts?' page
    And the user selects the Yes, I want to use two deferment accounts radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details for the duty owed' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have standing authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details for the import VAT owed' page
    And the user enters 7654321 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have standing authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they have import VAT and other duties, selects to pay by duty deferment account,
  and is redirected to the split payments flow - chooses to pay by two deferment accounts
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Do you want to split payment between two deferment accounts?' page
    And the user selects the Yes, I want to use two deferment accounts radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details for the duty owed' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Upload proof of authority to use this deferment account' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler and get response 204
    And clicks the Refresh button
    Then the user should be on the 'The file has been uploaded successfully' page
    When clicks the Continue button
    Then the user should be on the 'Deferment account details for the import VAT owed' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Upload proof of authority to use this deferment account' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler and get response 204
    And clicks the Refresh button
    Then the user should be on the 'The file has been uploaded successfully' page
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they have import VAT and other duties, selects to pay by duty deferment account,
  and is redirected to the split payments flow - chooses to pay by one deferment account - enters DAN and clicks 'My deferment account'
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Do you want to split payment between two deferment accounts?' page
    And the user selects the No, I want to use one deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the My deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they have import VAT and other duties, selects to pay by duty deferment account,
  and is redirected to the split payments flow - chooses to pay by one deferment account - enters DAN and
  clicks 'The importer’s account and I have authority to use it'
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00~A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Do you want to split payment between two deferment accounts?' page
    And the user selects the No, I want to use one deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Upload proof of authority to use this deferment account' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler and get response 204
    And clicks the Refresh button
    Then the user should be on the 'The file has been uploaded successfully' page
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they only have import VAT, selects to pay by duty deferment account,
  and is redirected to the enter DAN flow - enters DAN and clicks 'The importer’s account and I have authority to use it'
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with B00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Upload proof of authority to use this deferment account' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler and get response 204
    And clicks the Refresh button
    Then the user should be on the 'The file has been uploaded successfully' page
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: Representative declares that they only have other duties, selects to pay by duty deferment account,
  and is redirected to the enter DAN flow - enters DAN and clicks 'The importer’s account and I have standing authority to use it'
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Representative
    And I want to complete section 3: Underpayments with A00
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'Deferment account details' page
    And the user enters 1234567 into the Deferment account number (representative) input field
    And the user selects the The importer’s account and I have standing authority to use it radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page
