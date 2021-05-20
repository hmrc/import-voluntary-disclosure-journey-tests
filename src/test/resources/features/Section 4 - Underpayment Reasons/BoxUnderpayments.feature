@all @box_underpayments

@ZAP
Feature: Check the flow of the Box amendments reasons journey

  Scenario: Testing Underpayment reasons
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with Import VAT (B00)
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button

    #Box 22
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
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 33
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
    When clicks the Continue button
    Then the user should be on the 'You have added 2 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 34
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 34 Country of origin code radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 34 country of origin code amendment for item 1' page
    And the user enters CY into the Original value input field
    And the user enters GB into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 34
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is CY
    And I check that within the Underpayment box summary that the Item level value of Amended value is GB
    When clicks the Continue button
    Then the user should be on the 'You have added 3 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 35
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 35 Gross mass radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 35 gross mass amendment for item 1' page
    And the user enters 205.50 into the Original value input field
    And the user enters 310.10 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 35
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 205.50
    And I check that within the Underpayment box summary that the Item level value of Amended value is 310.10
    When clicks the Continue button
    Then the user should be on the 'You have added 4 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 36
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 36 Preference radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 36 preference amendment for item 1' page
    And the user enters 150 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 36
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 150
    And I check that within the Underpayment box summary that the Item level value of Amended value is 200
    When clicks the Continue button
    Then the user should be on the 'You have added 5 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 37
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 37 Procedure (customs procedure code) radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 37 customs procedure code amendment for item 1' page
    And the user enters 1234A67 into the Original value input field
    And the user enters 7654C21 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 37
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 1234A67
    And I check that within the Underpayment box summary that the Item level value of Amended value is 7654C21
    When clicks the Continue button
    Then the user should be on the 'You have added 6 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 38
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 38 Net mass radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 38 net mass amendment for item 1' page
    And the user enters 45 into the Original value input field
    And the user enters 60 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 38
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 45
    And I check that within the Underpayment box summary that the Item level value of Amended value is 60
    When clicks the Continue button
    Then the user should be on the 'You have added 7 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 39
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 39 Quota radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 39 quota amendment for item 1' page
    And the user enters 051187 into the Original value input field
    And the user enters 051188 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 39
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 051187
    And I check that within the Underpayment box summary that the Item level value of Amended value is 051188
    When clicks the Continue button
    Then the user should be on the 'You have added 8 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 41
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 41 Supplementary units radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 41 supplementary units amendment for item 1' page
    And the user enters 35.50 into the Original value input field
    And the user enters 55.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 41
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 35.50
    And I check that within the Underpayment box summary that the Item level value of Amended value is 55.50
    When clicks the Continue button
    Then the user should be on the 'You have added 9 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 42
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 42 Item price radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 42 item price amendment for item 1' page
    And the user enters 100.50 into the Original value input field
    And the user enters 200.50 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 42
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 100.50
    And I check that within the Underpayment box summary that the Item level value of Amended value is 200.50
    When clicks the Continue button
    Then the user should be on the 'You have added 10 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 43
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 43 Valuation method code radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 43 valuation method code amendment for item 1' page
    And the user enters 1 into the Original value input field
    And the user enters 4 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 43
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 1
    And I check that within the Underpayment box summary that the Item level value of Amended value is 4
    When clicks the Continue button
    Then the user should be on the 'You have added 11 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 45
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 45 Adjustment radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 45 adjustment amendment for item 1' page
    And the user enters A12.5 into the Original value input field
    And the user enters B12.5 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 45
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is A12.5
    And I check that within the Underpayment box summary that the Item level value of Amended value is B12.5
    When clicks the Continue button
    Then the user should be on the 'You have added 12 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 46
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 46 Statistical value radio button
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'Box 46 statistical value amendment for item 1' page
    And the user enters 200.50 into the Original value input field
    And the user enters 210 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Item level value of Box number is 46
    And I check that within the Underpayment box summary that the Item level value of Item number is 1
    And I check that within the Underpayment box summary that the Item level value of Original value is 200.50
    And I check that within the Underpayment box summary that the Item level value of Amended value is 210
    When clicks the Continue button
    Then the user should be on the 'You have added 13 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 62
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 62 Air transport costs radio button
    When clicks the Continue button
    Then the user should be on the 'Box 62 air transport costs amendment' page
    And the user enters GBP250.00 into the Original value input field
    And the user enters GBP300.00 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 62
    And I check that within the Underpayment box summary that the Entry level value of Original value is GBP250.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is GBP300.00
    When clicks the Continue button
    Then the user should be on the 'You have added 14 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 63
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 63 AWB or freight charges radio button
    When clicks the Continue button
    Then the user should be on the 'Box 63 AWB or freight charges amendment' page
    And the user enters EUR250.00 into the Original value input field
    And the user enters GBP300.00 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 63
    And I check that within the Underpayment box summary that the Entry level value of Original value is EUR250.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is GBP300.00
    When clicks the Continue button
    Then the user should be on the 'You have added 15 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 66
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 66 Insurance radio button
    When clicks the Continue button
    Then the user should be on the 'Box 66 insurance amendment' page
    And the user enters EUR250.00 into the Original value input field
    And the user enters EUR300.00 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 66
    And I check that within the Underpayment box summary that the Entry level value of Original value is EUR250.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is EUR300.00
    When clicks the Continue button
    Then the user should be on the 'You have added 16 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 67
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 67 Other charges of deductions radio button
    When clicks the Continue button
    Then the user should be on the 'Box 67 other charges or deductions amendment' page
    And the user enters GBP250.00 into the Original value input field
    And the user enters EUR300.00 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 67
    And I check that within the Underpayment box summary that the Entry level value of Original value is GBP250.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is EUR300.00
    When clicks the Continue button
    Then the user should be on the 'You have added 17 reasons for the underpayment' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Box 68
    Then the user should be on the 'What was the reason for the underpayment?' page
    And the user selects the Box 68 Adjustment for VAT value radio button
    When clicks the Continue button
    Then the user should be on the 'Box 68 adjustment for VAT value amendment' page
    And the user enters GBP250.00 into the Original value input field
    And the user enters EUR300.00 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the details of the reason for underpayment' page
    And I check that within the Underpayment box summary that the Entry level value of Box number is 68
    And I check that within the Underpayment box summary that the Entry level value of Original value is GBP250.00
    And I check that within the Underpayment box summary that the Entry level value of Amended value is EUR300.00
    When clicks the Continue button
    Then the user should be on the 'You have added 18 reasons for the underpayment' page
    #Box checks
    And I check that within the Underpayment box summary that entry 1 has a value of Box 22 and level of Entry level
    And I check that within the Underpayment box summary that entry 2 has a value of Box 33 and level of Item 1
    And I check that within the Underpayment box summary that entry 3 has a value of Box 34 and level of Item 1
    And I check that within the Underpayment box summary that entry 4 has a value of Box 35 and level of Item 1
    And I check that within the Underpayment box summary that entry 5 has a value of Box 36 and level of Item 1
    And I check that within the Underpayment box summary that entry 6 has a value of Box 37 and level of Item 1
    And I check that within the Underpayment box summary that entry 7 has a value of Box 38 and level of Item 1
    And I check that within the Underpayment box summary that entry 8 has a value of Box 39 and level of Item 1
    And I check that within the Underpayment box summary that entry 9 has a value of Box 41 and level of Item 1
    And I check that within the Underpayment box summary that entry 10 has a value of Box 42 and level of Item 1
    And I check that within the Underpayment box summary that entry 11 has a value of Box 43 and level of Item 1
    And I check that within the Underpayment box summary that entry 12 has a value of Box 45 and level of Item 1
    And I check that within the Underpayment box summary that entry 13 has a value of Box 46 and level of Item 1
    And I check that within the Underpayment box summary that entry 14 has a value of Box 62 and level of Entry level
    And I check that within the Underpayment box summary that entry 15 has a value of Box 63 and level of Entry level
    And I check that within the Underpayment box summary that entry 16 has a value of Box 66 and level of Entry level
    And I check that within the Underpayment box summary that entry 17 has a value of Box 67 and level of Entry level
    And I check that within the Underpayment box summary that entry 18 has a value of Box 68 and level of Entry level
