@all @auth
  Feature: Testing when a user is unauthorised

    Scenario: A user with no enrolment is unable to access the IVD service
      When an unauthorised user attempts to log in to access the Import Voluntary Disclosure Service for Organisation
      Then the user should be on the 'Unauthorised' page

    Scenario: An individuals user is unable to access the IVD service
      When an unauthorised user attempts to log in to access the Import Voluntary Disclosure Service for Individual
      Then the user should be on the temporary: Affinity group individuals hand-off page page

    Scenario: An Agent user is unable to access the IVD service
      When an unauthorised user attempts to log in to access the Import Voluntary Disclosure Service for Agents
      Then the user should be on the temporary: Affinity group agent hand-off page page
      