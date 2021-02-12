@all @box_underpayments

Feature: Check the Box amendments reasons page

@ZAP
Scenario: A logged in user is able to walk through the flow Box underpayments
  Given a user logs in to access the Import Voluntary Disclosure Service
  Then the user should be on the 'Are you the importer or their representative?' page
  And the user selects the Importer radio button
  When clicks the Continue button
  And the user navigates the 'box-guidance' page
  Then the user should be on the 'You must tell us the reason for the underpayment' page
  When clicks the Continue button
  Then the user should be on the 'What is the box number?' page
  And the user enters 33 into the Box Number input field
  When clicks the Continue button
  Then the user should be on the 'What is the item number?' page
  And the user enters 1 into the Item Number input field
  When clicks the Continue button
  Then the user should be on the 'What is the item number?' page
