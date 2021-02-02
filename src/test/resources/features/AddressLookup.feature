@all @address-lookup

Feature: Testing the address lookup functionality

  @ZAP
  Scenario: A logged in user is able to use address lookup to find their address as a single input
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
    Then the user should be on the 'Has the customs procedure code changed?' page
    And the user selects the No radio button
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
    Then the user should be on the 'What are your contact details?' page
    And the user enters First last into the Name input field
    And the user enters email@email.com into the Email address input field
    And the user enters 0123456789 into the UK telephone number input field
    When clicks the Continue button
    Then the user should be on the 'Is this your correct address?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Find your address' page
    And the user enters AA000AA into the UK postcode input field
    And the user enters 1 into the Property name or number input field
    When clicks the Find Address button
    Then the user should be on the 'Confirm address' page
    When clicks the Confirm address button
    Then the user should be on the 'Are you paying by deferment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Are you paying by deferment?' page

  Scenario: A logged in user is able to use address lookup to select their address from the list available
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
    Then the user should be on the 'Has the customs procedure code changed?' page
    And the user selects the No radio button
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
    Then the user should be on the 'What are your contact details?' page
    And the user enters First last into the Name input field
    And the user enters email@email.com into the Email address input field
    And the user enters 0123456789 into the UK telephone number input field
    When clicks the Continue button
    Then the user should be on the 'Is this your correct address?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Find your address' page
    And the user enters ZZ1 1ZZ into the UK postcode input field
    When clicks the Find Address button
    Then the user should be on the 'Select the new address' page
    And the user selects the 2 Other Place radio button
    When clicks the Continue button
    Then the user should be on the 'Confirm address' page
    When clicks the Confirm address button
    Then the user should be on the 'Are you paying by deferment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Are you paying by deferment?' page

  Scenario: A logged in user is able to use address lookup to enter their address manually
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
    Then the user should be on the 'Has the customs procedure code changed?' page
    And the user selects the No radio button
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
    Then the user should be on the 'What are your contact details?' page
    And the user enters First last into the Name input field
    And the user enters email@email.com into the Email address input field
    And the user enters 0123456789 into the UK telephone number input field
    When clicks the Continue button
    Then the user should be on the 'Is this your correct address?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Find your address' page
    When clicks the Enter the address manually hyperlink
    And the user should be on the 'Enter address' page
    And the user enters 1 Test Street into the Address line 1 input field
    And the user enters Test Address 2 into the Address line 2 (optional) input field
    And the user enters Test Town into the Town/city input field
    And the user enters AA00 0AA into the UK postcode (optional) input field
    When clicks the Continue button
    Then the user should be on the 'Confirm address' page
    When clicks the Confirm address button
    Then the user should be on the 'Are you paying by deferment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Are you paying by deferment?' page
