@all @upload-supporting-documentation
  Feature: Testing upload further documentation flow

    Scenario: A logged in representative is able to navigate to the Documents you must upload page
      Given I want to complete section 1: Service Entry
      And I want to complete section 2: Entry Details as Representative
      And I want to complete section 3: Underpayments with A00
      And I want to complete section 4: Underpayment Reasons
      Then the user should be on the 'Documents you must upload' page

    Scenario: A logged in user declares that they have additional documents
      When clicks the Continue button
      Then the user should be on the 'Do you have any of these documents?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'Do you have any of these documents?' page

    Scenario: A logged in user declares that they don't have additional documents
      When clicks the Continue button
      Then the user should be on the 'Do you have any of these documents?' page
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
