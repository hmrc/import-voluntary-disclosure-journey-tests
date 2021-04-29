@all @underpayments

@ZAP
Feature: Check the change flow of the Underpayments journey

  Scenario: A logged in importer is able to complete the underpayment flow for Import VAT and Customs Duty and make a change to the values
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Import VAT radio button
    When clicks the Continue button
    Then the user should be on the 'Import VAT underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £100.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £200.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £100.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £200.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    When the user clicks the 1st change link for Import VAT on the Underpayment summary page
    Then the user should be on the 'Change the import VAT underpayment details' page
    And the user enters 150 into the Original value input field
    And the user enters 280 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £150.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £280.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    When the user clicks the 2nd change link for Customs Duty on the Underpayment summary page
    Then the user should be on the 'Change the Customs Duty underpayment details' page
    And the user enters 240 into the Original value input field
    And the user enters 320 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £240.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £320.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page

  Scenario: A logged in importer is able to complete the underpayment flow for Import VAT and Customs Duty and remove both Underpayment entries
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Import VAT radio button
    When clicks the Continue button
    Then the user should be on the 'Import VAT underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £100.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £200.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £100.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £200.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
#    add test here to check there are 2 rows in the summary list
    And I check that within the Underpayment summary that the 1st entry has a duty value of Import VAT and total value of £100.00
    And I check that within the Underpayment summary that the 2nd entry has a duty value of Customs Duty and total value of £100.00
    When the user clicks the 1st change link for Import VAT on the Underpayment summary page
    Then the user should be on the 'Change the import VAT underpayment details' page
    Then the user clicks the Remove this import VAT underpayment link
    #    ^ add the above link to the Step Def once code is available (find link id)
    Then the user should be on the 'Are you sure you want to remove this import VAT underpayment?' page
    And the user selects the No radio button
    When clicks the Continue button
    Then the user should be on the 'Change the import VAT underpayment details' page
    Then the user clicks the Remove this import VAT underpayment link
    Then the user should be on the 'Are you sure you want to remove this import VAT underpayment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    #    add test here to check there is 1 row in the summary list
    And I check that within the Underpayment summary that the 1st entry has a duty value of Customs Duty and total value of £100.00
    When the user clicks the 1st change link for Customs Duty on the Underpayment summary page
    Then the user should be on the 'Change the Customs Duty underpayment details' page
    Then the user clicks the Remove this Customs Duty underpayment link
    #    ^ add the above link to the Step Def once code is available (find link id)
    Then the user should be on the 'Are you sure you want to remove this Customs Duty underpayment?' page
    And the user selects the Yes radio button
    When clicks the Continue button
    Then the user should be on the 'Tell us what was underpaid' page

  Scenario: A logged in importer is able to change the value of an underpayment from the confirm underpayment screen
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    When clicks the Continue button
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Import VAT radio button
    When clicks the Continue button
    Then the user should be on the 'Import VAT underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £100.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £200.00
    When the user clicks the 1st change link for Import VAT on the Confirm underpayment page
    Then the user should be on the 'Change the import VAT underpayment details' page
    And the user enters 100 into the Original value input field
    And the user enters 500 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    And I check that within the Confirm underpayment details page the total Amount that was paid to HMRC is a value of £100.00
    And I check that within the Confirm underpayment details page the total Amount that should have been paid is a value of £500.00
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
