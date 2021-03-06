@all @updateCase

Feature: Checking the update case flow through the service

  Scenario: An user is able to update their case - additional documentation added
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'What do you want to do?' page
    And the user selects the Add more information to an existing underpayment disclosure radio button
    When clicks the Continue button
    Then the user should be on the 'What is the disclosure reference number?' page
    And the user enters C181234567890123456789 into the disclosure reference number input field
    When clicks the Continue button
    Then the user should be on the 'Do you need to send us more documentation?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Upload documentation' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler with Document: TestDocument.pdf and get response 204
    And clicks the Refresh button
    Then the user should be on the 'You have uploaded 1 file' page
    And the user selects the No radio button
    And clicks the Continue button
    Then the user should be on the 'Tell us any additional information' page
    And the user enters Update case additional information into the Additional Information input field
    When clicks the Continue button
    Then the user should be on the 'Check your information before adding it to the disclosure' page
    And I check that within the Update case details summary that the value of Reference number is C181234567890123456789
    And I check that within the Update case details summary that the value of Add more documentation? is Yes
    And I check that within the Update case details summary that the value of 1 file uploaded is TestDocument.pdf
    And I check that within the Update case details summary that the value of Additional information is Update case additional information
    #Change link for reference number
    And I click the change link on row 1 on the Update Case Check Your Answers page
    Then the user should be on the 'What is the disclosure reference number?' page
    And the user enters C180987654321987654321 into the disclosure reference number input field
    When clicks the Continue button
    Then the user should be on the 'Check your information before adding it to the disclosure' page
    And I check that within the Update case details summary that the value of Reference number is C180987654321987654321
    #Change link for Additional information
    And I click the change link on row 4 on the Update Case Check Your Answers page
    Then the user should be on the 'Tell us any additional information' page
    And the user enters Additional information for update case into the Additional Information input field
    When clicks the Continue button
    Then the user should be on the 'Check your information before adding it to the disclosure' page
    And I check that within the Update case details summary that the value of Additional information is Additional information for update case
    #Change link for file upload
    And I click the change link on row 3 on the Update Case Check Your Answers page
    Then the user should be on the 'You have uploaded 1 file' page
    And the user clicks the 1st remove link for TestDocument on the Upload Another page
    Then the user should be on the 'Are you sure you want to remove this file?' page
    And the user selects the Yes radio button
    And clicks the Continue button
    Then the user should be on the 'Upload documentation' page
    And I get the data from the page
    And the user selects file /src/test/resources/data/SampleDocument.pdf in the file input field
    And I call the success redirect
    Then the user should be on the 'Upload progress' page
    And I call the upscan callback handler with Document: SampleDocument.pdf and get response 204
    And clicks the Refresh button
    Then the user should be on the 'You have uploaded 1 file' page
    And there should be '1' files on the page
    And the user selects the No radio button
    And clicks the Continue button
    Then the user should be on the 'Check your information before adding it to the disclosure' page
    And I check that within the Update case details summary that the value of 1 file uploaded is SampleDocument.pdf
    #Change link for more documentation
    And I click the change link on row 2 on the Update Case Check Your Answers page
    Then the user should be on the 'Do you need to send us more documentation?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Check your information before adding it to the disclosure' page
    And I check that within the Update case details summary that the value of Add more documentation? is No
    And I check that within the Update case details summary that the third row is Additional information
    #Completing CYA
    When clicks the Accept and send button
    Then the user should be on the 'Information added' page

  Scenario: An user is able to update their case - no additional documentation added
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'What do you want to do?' page
    And the user selects the Add more information to an existing underpayment disclosure radio button
    When clicks the Continue button
    Then the user should be on the 'What is the disclosure reference number?' page
    And the user enters C181234567890123456789 into the disclosure reference number input field
    When clicks the Continue button
    Then the user should be on the 'Do you need to send us more documentation?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Tell us any additional information' page
    And the user enters Update case additional information into the Additional Information input field
    When clicks the Continue button
    Then the user should be on the 'Check your information before adding it to the disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Information added' page

