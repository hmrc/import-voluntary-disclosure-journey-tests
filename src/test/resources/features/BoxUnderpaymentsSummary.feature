@all @box_underpayments_summary

@ZAP
Feature: Check the flow of the Box underpayments summary journey

  Scenario: A logged in user is able to walk through the Box 22 entry level underpayment flow and opts to add another box
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with Customs Duty~Import VAT~Excise Duty
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
    And I check that within the Underpayment box summary that the 1st entry has a value of Box 22 and level of Entry level
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'What is the box number?' page
    And the user enters 33 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 33 commodity code amendment for item 1' page
    And the user enters 1234567891ABCD into the Original value input field
    And the user enters 1987654321DCBA into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When clicks the Continue button
    Then the user should be on the 'You have added 2 reasons for the underpayment' page
    And I check that within the Underpayment box summary that the 1st entry has a value of Box 22 and level of Entry level
    And I check that within the Underpayment box summary that the 2nd entry has a value of Box 33 and level of Item 1
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
    Then the user should be on the 'How will you pay for the duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'What is the deferment account number?' page
    And the user enters 0123456 into the Deferment account number input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page
