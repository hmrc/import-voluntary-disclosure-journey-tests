@all @ivd

Feature: Check the full flow of Import Voluntary Disclosure Journey

  @ZAP
  Scenario: A logged in user is able to walk through the flow of IVD
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Importer radio button
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
    Then the user should be on the 'What is the customs procedure code?' page
    And the user enters 1234A67 into the Customs procedure code input field
    When clicks the Continue button
    Then the user should be on the 'What have you underpaid?' page
    And they select the Customs Duty checkbox
    And they select the Excise Duty checkbox
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details' page
    And the user enters 200 into the Original amount input field
    And the user enters 350 into the Amended amount input field
    When clicks the Continue button
    Then the user should be on the 'Excise Duty underpayment details' page
    And the user enters 390 into the Original amount input field
    And the user enters 425 into the Amended amount input field
    When clicks the Continue button
    Then the user should be on the 'Underpayment amount summary' page
    When clicks the Continue button
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
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page
