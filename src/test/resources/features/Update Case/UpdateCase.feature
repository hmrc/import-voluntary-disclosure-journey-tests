@all @updateCase

Feature: Checking the update case flow through the service

  Scenario: An user is able to update their case
    Given I want to complete section 1: Service Entry for Organisation
    Then the user should be on the 'What do you want to do?' page
    And the user selects the Add more information to an existing underpayment disclosure radio button
    When clicks the Continue button
#    Then the user should be on the 'What is the disclosure reference number?' page
#    And the user enters caseIdRef into the disclosure reference number input field
#    When clicks the Continue button