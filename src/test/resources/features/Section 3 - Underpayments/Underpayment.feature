@all @underpayments

@ZAP
Feature: Check the flow of the Underpayments journey

  Scenario: A logged in importer is able make changes to get to the Underpayments section
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    When clicks the Continue button

    #Import VAT Duty
    Then the user should be on the 'Which type of tax or duty do you want to tell us about first?' page
    And the user selects the Import VAT (B00) radio button
    When clicks the Continue button
    Then the user should be on the 'Import VAT underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the import VAT underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Customs Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty (A00) radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Excise Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Excise Duty radio button
    When clicks the Continue button
    Then the user should be on the 'Excise duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the excise duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Additional Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Additional Duty (A20) radio button
    When clicks the Continue button
    Then the user should be on the 'Additional Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Additional Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Definitive Anti-Dumping Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Definitive Anti-Dumping Duty (A30) radio button
    When clicks the Continue button
    Then the user should be on the 'Definitive Anti-Dumping Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Definitive Anti-Dumping Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Provisional Anti-Dumping Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Provisional Anti-Dumping Duty (A35) radio button
    When clicks the Continue button
    Then the user should be on the 'Provisional Anti-Dumping Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Provisional Anti-Dumping Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Definitive Countervailing Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Definitive Countervailing Duty (A40) radio button
    When clicks the Continue button
    Then the user should be on the 'Definitive Countervailing Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Definitive Countervailing Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Provisional Countervailing Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Provisional Countervailing Duty (A45) radio button
    When clicks the Continue button
    Then the user should be on the 'Provisional Countervailing Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Provisional Countervailing Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Customs Duty on Agricultural Products
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Customs Duty on Agricultural products (A10) radio button
    When clicks the Continue button
    Then the user should be on the 'Customs Duty on Agricultural Products underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Customs Duty on Agricultural Products underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    And the user selects the Yes radio button
    When clicks the Continue button

    #Compensatory Duty
    Then the user should be on the 'Which type of tax or duty was underpaid?' page
    And the user selects the Compensatory Duty (D10) radio button
    When clicks the Continue button
    Then the user should be on the 'Compensatory Duty underpayment details, in pounds' page
    And the user enters 100 into the Original value input field
    And the user enters 200 into the Amended value input field
    When clicks the Continue button
    Then the user should be on the 'Confirm the Compensatory Duty underpayment details' page
    When clicks the Continue button
    Then the user should be on the 'Underpayment summary' page
    When clicks the Continue button
    Then the user should be on the 'You must tell us the reason for the underpayment' page
