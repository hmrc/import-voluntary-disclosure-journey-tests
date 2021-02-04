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
      Then the user should be on the 'You have uploaded 1 file' page
      And there should be '1' files on the page

    Scenario: The user uploads another file
      And the user selects the Yes radio button
      And clicks the Continue button
      Then the user should be on the 'Upload supporting documentation' page
      And I get the data from the page
      And the user selects file /src/test/resources/data/TestDocument.pdf in the file input field
      And I call the success redirect
      Then the user should be on the 'Upload progress' page
      And I call the upscan callback handler and get response 204
      And clicks the Refresh button
      Then the user should be on the 'You have uploaded 2 files' page
      And there should be '2' files on the page

    Scenario: The user removes a file
      And the user clicks the Remove link
      Then the user should be on the 'Are you sure you want to remove this file?' page
      And the user selects the Yes radio button
      And clicks the Continue button
      Then the user should be on the 'You have uploaded 1 file' page
      And there should be '1' files on the page

    Scenario: The user removes another file
      And the user clicks the Remove link
      Then the user should be on the 'Are you sure you want to remove this file?' page
      And the user selects the Yes radio button
      And clicks the Continue button
      Then the user should be on the 'Upload supporting documentation' page
