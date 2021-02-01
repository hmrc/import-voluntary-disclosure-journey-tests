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
      And the user enters /src/test/resources/data/TestDocument.pdf into the Upload document input field
      And clicks the Continue button
      And wait for 10 seconds
      Then the user should be on the 'You have uploaded 1 file' page