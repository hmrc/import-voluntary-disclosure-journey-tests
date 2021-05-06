@all @cya
Feature: Testing check your answers

  Scenario: User navigates to check your answers
    Given I want to complete section 1: Service Entry for Organisation

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
    And the user enters 31 into the Entry date day input field
    And the user enters 12 into the Entry date month input field
    And the user enters 2020 into the Entry date year input field
    When clicks the Continue button
    Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
    And the user selects the Yes radio button
    And clicks the Continue button
    Then the user should be on the 'Is there only one customs procedure code for this entry?' page
    And the user selects the Yes radio button
    And clicks the Continue button
    Then the user should be on the 'What is the customs procedure code?' page
    And the user enters 1234A67 into the Customs procedure code input field
    When clicks the Continue button

    Then the user should be on the 'Tell us what was underpaid' page
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Import VAT radio button
    When clicks the Continue button
    Then the user should be on the 'Import VAT underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the No radio button
    When clicks the Continue button

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
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'Do you want to tell us anything else about the underpayment?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Tell us the extra information about the underpayment' page
      And the user enters More Information into the More Information input field
      When clicks the Continue button
      Then the user should be on the 'Documents you must upload' page
      When clicks the Continue button
      Then the user should be on the 'Do you have any of these documents?' page
      And the user selects the No radio button
      And clicks the Continue button
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
      Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
      And the user selects the Another payment method radio button
      When clicks the Continue button
      Then the user should be on the 'Check your answers before sending your disclosure' page

      # Importer details checks
    And I check that within the Importer details summary that the value of Name is Test User
    And I check that within the Importer details summary that the value of Address is 1 Test Street Testtown AA00 0AA GB
    And I check that within the Importer details summary that the value of Importer has EORI number? is Yes
    And I check that within the Importer details summary that the value of Importer EORI number is GB345834921000
    And I check that within the Importer details summary that the value of Importer VAT registered? is Yes

      # Entry details checks
    And I check that within the Entry details summary that the value of Number of entries is One Entry
    And I check that within the Entry details summary that the value of EPU is 123
    And I check that within the Entry details summary that the value of Entry number is 123456Q
    And I check that within the Entry details summary that the value of Entry date is 31 December 2020
    And I check that within the Entry details summary that the value of Entry acceptance date before 1 January 2021? is Before 1 January 2021
    And I check that within the Entry details summary that the value of One customs procedure code? is Yes
    And I check that within the Entry details summary that the value of Customs procedure code is 1234A67

      # Change Entry details
        # Entry details change
    And I click the change link on row 2 in the Entry details section on the Check Your Answers page
    Then the user should be on the 'Entry details' page
    And the user enters 456 into the EPU number input field
    And the user enters 987654B into the Entry number input field
    And the user enters 25 into the Entry date day input field
    And the user enters 02 into the Entry date month input field
    And the user enters 2021 into the Entry date year input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    And I check that within the Entry details summary that the value of EPU is 456
    And I check that within the Entry details summary that the value of Entry number is 987654B
    And I check that within the Entry details summary that the value of Entry date is 25 February 2021
        # Acceptance Date change
    And I click the change link on row 3 in the Entry details section on the Check Your Answers page
    Then the user should be on the 'Was the entry acceptance date before 1 January 2021?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    And I check that within the Entry details summary that the value of Entry acceptance date before 1 January 2021? is On or after 1 January 2021

      # Underpayment details checks
      And I check that within the Underpayment details summary that the value of Total owed to HMRC is £200.00
      And I check that within the Underpayment details summary that the value of Reason for underpayment is 1 reason given
      And I check that within the Underpayment details summary that the value of Tell us anything else? is Yes
      And I check that within the Underpayment details summary that the value of Extra information is More Information
      And I check that within the Underpayment details summary that the value of 1 file uploaded is TestDocument.pdf

      # Your details checks
    And I check that within the Your details summary that the value of Name is First last
    And I check that within the Your details summary that the value of Email address is email@email.com
    And I check that within the Your details summary that the value of Telephone number is 0123456789
#   And I check that within the Your details summary that the Address contains 1st line: 99 Avenue Road, 2nd line: Anyold Town, postcode: 99JZ 1AA and country: GB
      # Change your details name, email and phone
    And I click the change link on row 1 in the Your details section on the Check Your Answers page
    Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
    And the user enters New name into the Name input field
    And the user enters alternative@email.com into the Email address input field
    And the user enters 0987654321 into the UK telephone number input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    And I check that within the Your details summary that the value of Name is New name
    And I check that within the Your details summary that the value of Email address is alternative@email.com
    And I check that within the Your details summary that the value of Telephone number is 0987654321

      # Payment details checks
#      And I check that within the Payment information summary that the value of By deferment? is No
