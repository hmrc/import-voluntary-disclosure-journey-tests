@all @bulk

Feature: Checking the bulk entry flow through the service

  Scenario: An Importer is able to walk through the bulk entry flow of IVD
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the I am the importer radio button
    When clicks the Continue button
    Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
    And the user selects the More than one entry radio button
    When clicks the Continue button
    Then the user should be on the 'When were the entry acceptance dates for all the entries?' page
    And the user selects the On or before 31 December 2020 radio button
    And clicks the Continue button
    Then the user should be on the 'Tell us what was underpaid' page
    And clicks the Continue button
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Excise Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Excise duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the excise duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Upload a file containing the underpayment details for each entry' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler with Document: TestDocument.pdf and get response 204
    And clicks the Refresh button
    Then the user should be on the 'The file has been uploaded successfully' page
    When clicks the Continue button
    Then the user should be on the 'What were the reasons for the underpayment of tax or duty?' page
    And the user enters Bulk More Information into the More Information input field
    When clicks the Continue button
    Then the user should be on the 'What are your contact details?' page
    And the user enters First last into the Name input field
    And the user enters email@email.com into the Email address input field
    And the user enters 0123456789 into the UK telephone number input field
    When clicks the Continue button
    Then the user should be on the 'Is this the correct address to send the demand for payment to?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    And the user selects the Another payment method radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure sent' page
