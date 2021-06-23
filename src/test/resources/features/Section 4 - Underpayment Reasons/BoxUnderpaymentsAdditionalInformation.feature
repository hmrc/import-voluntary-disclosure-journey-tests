@all

  Feature: Testing the additional information section of box underpayment reasons

    Scenario: A user enters a box underpayment reason and opts to provide additional information
      Given I want to complete section 1: Service Entry for Organisation
      And I want to complete section 2: Entry Details as Importer
      Then the user should be on the 'Tell us what was underpaid' page
      And I want to complete section 3: Underpayments with Import VAT (B00)~Customs Duty (A00)~Excise Duty
      Then the user should be on the 'You must tell us the reason for the underpayment' page
      When clicks the Continue button
      Then the user should be on the 'Which reason for the underpayment do you want to tell us about first?' page
      And the user selects the Box 22 Invoice currency and total amount invoiced radio button
      When clicks the Continue button
      Then the user should be on the 'Box 22 invoice currency and total amount invoiced amendment' page
      And the user enters EUR125.00 into the Original value input field
      And the user enters GBP190.50 into the Amended value input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the reason for underpayment' page
      When clicks the Confirm button
      Then the user should be on the 'You have added 1 reason for the underpayment' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Do you want to tell us anything else about the underpayment?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Tell us the extra information about the underpayment' page
      And the user enters More Information into the More Information input field
      When clicks the Continue button
      Then the user should be on the 'Documents you must upload' page
