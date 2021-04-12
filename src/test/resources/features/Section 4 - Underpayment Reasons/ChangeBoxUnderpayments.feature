@all @box_underpayments

@ZAP
Feature: Check the change flow of the Box amendments reasons journey

  Scenario: A logged in user is able to walk through the Box 22 entry level underpayment flow, opt to change to box 33,
    and then opt to change back to box 22
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 22 Invoice currency and total amount invoiced radio button
    When clicks the Continue button
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR125.00 into the Original value input field
    And the user enters GBP190.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 22
    And I check that within the Underpayment box summary that the Entry level value of Original value is EUR125.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is GBP190.50
    When the user clicks the 1st change link for Box number on the Underpayment box summary page
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 33 Commodity code radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 33 commodity code amendment for item 1' page
    And the user enters 1234567891ABCD into the Original value input field
    And the user enters 1987654321DCBA into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 33
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 1234567891ABCD
    And I check that within the Underpayment box summary that the Item level value of Amended value is 1987654321DCBA
    When the user clicks the 2nd change link for Item number on the Underpayment box summary page
    Then the user should be on the 'What is the item number?' page
    When the user clicks browser back
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When the user clicks the 3rd change link for Original value on the Underpayment box summary page
    Then the user should be on the 'Box 33 commodity code amendment for item 1' page
    When the user clicks browser back
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When the user clicks the 3rd change link for Amended value on the Underpayment box summary page
    Then the user should be on the 'Box 33 commodity code amendment for item 1' page
    When the user clicks browser back
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When the user clicks the 1st change link for Box number on the Underpayment box summary page
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 22 Invoice currency and total amount invoiced radio button
    When clicks the Continue button
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR125.00 into the Original value input field
    And the user enters GBP190.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 22
    And I check that within the Underpayment box summary that the Entry level value of Original value is EUR125.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is GBP190.50
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Do you want to tell us anything else about the underpayment?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Supporting documentation' page
    And I want to complete section 5: Supporting Documentation
    Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT owed?' page
    And I want to complete section 7: Deferment Details as Importer with no split
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure complete' page

  Scenario: A logged in user is able to Change an entry level reason from Underpayment Reason Summary page
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 22 Invoice currency and total amount invoiced radio button
    When clicks the Continue button
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR125.00 into the Original value input field
    And the user enters GBP190.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    When the user clicks the 1st change link for Box 22 on the Underpayment box summary page
    Then the user should be on the 'Change box 22 of the reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Entry level value of Original value is EUR125.00
    And I check that within the Underpayment Reason Change that the Entry level value of Amended value is GBP190.50
    When the user clicks the 1st change link for amendment values on the Change reason page
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR225.00 into the Original value input field
    And the user enters GBP290.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the changes to box 22 reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Entry level value of Original value is EUR225.00
    And I check that within the Underpayment Reason Change that the Entry level value of Amended value is GBP290.50
    When the user clicks the 1st change link for amendment values on the Confirm Change reason page
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR325.00 into the Original value input field
    And the user enters GBP390.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the changes to box 22 reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Entry level value of Original value is EUR325.00
    And I check that within the Underpayment Reason Change that the Entry level value of Amended value is GBP390.50
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    When the user clicks the 1st change link for Box 22 on the Underpayment box summary page
    Then the user should be on the 'Change box 22 of the reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Entry level value of Original value is EUR325.00
    And I check that within the Underpayment Reason Change that the Entry level value of Amended value is GBP390.50

  Scenario: A logged in user is able to Change an item level reason from Underpayment Reason Summary page
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 33 Commodity code radio button
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
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    When the user clicks the 1st change link for Box 33 on the Underpayment box summary page
    Then the user should be on the 'Change box 33 of the reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Item level value of Item number is 1
    And I check that within the Underpayment Reason Change that the Item level value of Original value is 1234567891ABCD
    And I check that within the Underpayment Reason Change that the Item level value of Amended value is 1987654321DCBA
    When the user clicks the 1st change link for amendment values on the Change reason page
    Then the user should be on the 'What is the item number?' page
    And the user enters 2 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 33 commodity code amendment for item 2' page
    And the user enters 1234567891AAAA into the Original value input field
    And the user enters 1234567891BBBB into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the changes to box 33 reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Item level value of Item number is 2
    And I check that within the Underpayment Reason Change that the Item level value of Original value is 1234567891AAAA
    And I check that within the Underpayment Reason Change that the Item level value of Amended value is 1234567891BBBB
    When the user clicks the 1st change link for amendment values on the Confirm Change reason page
    Then the user should be on the 'What is the item number?' page
    And the user enters 3 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 33 commodity code amendment for item 3' page
    And the user enters 1234567891CCCC into the Original value input field
    And the user enters 1234567891DDDD into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the changes to box 33 reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Item level value of Original value is 1234567891CCCC
    And I check that within the Underpayment Reason Change that the Item level value of Amended value is 1234567891DDDD
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    When the user clicks the 1st change link for Box 33 on the Underpayment box summary page
    Then the user should be on the 'Change box 33 of the reason for underpayment' page
    And I check that within the Underpayment Reason Change that the Item level value of Item number is 3
    And I check that within the Underpayment Reason Change that the Item level value of Original value is 1234567891CCCC
    And I check that within the Underpayment Reason Change that the Item level value of Amended value is 1234567891DDDD

  Scenario: A logged in user is able to Remove an unwanted reason from the Underpayment Reason Summary page
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 22 Invoice currency and total amount invoiced radio button
    When clicks the Continue button
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR125.00 into the Original value input field
    And the user enters GBP190.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 33 Commodity code radio button
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
    When the user clicks the 1st change link for Box 22 on the Underpayment box summary page
    Then the user should be on the 'Change box 22 of the reason for underpayment' page
    When the user clicks the Remove this reason for underpayment link
    Then the user should be on the 'Are you sure you want to remove this reason for underpayment?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Change box 22 of the reason for underpayment' page
    When the user clicks the Remove this reason for underpayment link
    Then the user should be on the 'Are you sure you want to remove this reason for underpayment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page

  Scenario: A logged in user is able to Remove all reasons from the Underpayment Reason Summary page
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with B00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 22 Invoice currency and total amount invoiced radio button
    When clicks the Continue button
    Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
    And the user enters EUR125.00 into the Original value input field
    And the user enters GBP190.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    When clicks the Continue button
    Then the user should be on the 'You have added 1 reason for the underpayment' page
    When the user clicks the 1st change link for Box 22 on the Underpayment box summary page
    Then the user should be on the 'Change box 22 of the reason for underpayment' page
    When the user clicks the Remove this reason for underpayment link
    Then the user should be on the 'Are you sure you want to remove this reason for underpayment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'You must tell us the reason for the underpayment' page
