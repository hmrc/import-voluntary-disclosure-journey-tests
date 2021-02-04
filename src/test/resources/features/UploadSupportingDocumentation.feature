@all @upload-supporting-documentation
  Feature: Testing the upload of a file

    Scenario: A logged in representative is able to navigate to the supporting documentation page
      Given a user logs in to access the Import Voluntary Disclosure Service
      And the user selects the Representative radio button
      And clicks the Continue button
      And the user navigates the 'supporting-documentation' page
      Then the user should be on the 'Supporting documentation' page

    Scenario: The user continues to Upload a file
      And clicks the Continue button
      Then the user should be on the 'Upload supporting documentation' page
      And I get the data from the page
      And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
      And I call the success redirect
      Then the user should be on the 'Upload progress' page
      And I call the upscan callback handler and get response 204
      And clicks the Refresh button
      And the user should be either waiting for file upload or completed upload
      Then the user should be on the 'You have uploaded 1 file' page
