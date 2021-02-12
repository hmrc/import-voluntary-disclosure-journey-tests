@all @box_underpayments

@ZAP
Feature: Check the flow of the Box amendments reasons journey

  Background:
    Given a user logs in to access the Import Voluntary Disclosure Service
    Then the user should be on the 'Are you the importer or their representative?' page
    And the user selects the Importer radio button
    When clicks the Continue button
    And the user navigates the 'box-guidance' page
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    When clicks the Continue button

  Scenario: A logged in user is able to walk through the Box 22 entry level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 22 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the box number?' page

  Scenario: A logged in user is able to walk through the Box 33 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 33 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 34 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 34 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 35 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 35 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 36 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 36 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 37 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 37 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 38 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 38 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 39 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 39 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 41 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 41 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 42 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 42 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 43 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 43 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 45 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 45 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 46 item level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 46 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page
    And the user enters 1 into the Item Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the item number?' page

  Scenario: A logged in user is able to walk through the Box 62 entry level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 62 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the box number?' page

  Scenario: A logged in user is able to walk through the Box 63 entry level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 63 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the box number?' page

  Scenario: A logged in user is able to walk through the Box 66 entry level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 66 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the box number?' page

  Scenario: A logged in user is able to walk through the Box 67 entry level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 67 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the box number?' page

  Scenario: A logged in user is able to walk through the Box 68 entry level underpayment flow
    Then the user should be on the 'What is the box number?' page
    And the user enters 68 into the Box Number input field
    When clicks the Continue button
    Then the user should be on the 'What is the box number?'
