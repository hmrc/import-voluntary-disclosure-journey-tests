@all
  Feature: Testing when a user is unauthorised

    Scenario: A use who is unauthorised is unable to access the IVD service
      When an unauthorised user attempts to log in to access the Import Voluntary Disclosure Service for Organisation
      Then the user should be on the 'Unauthorised' page
