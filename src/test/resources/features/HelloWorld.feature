@all

Feature: Hello World Feature file using Cucumber

  @ZAP
  Scenario: A logged in user is able to the Hello World page
    Given a user logs in to access the import voluntary disclosure service
    Then the user should be on the 'import-voluntary-disclosure-frontend' page

