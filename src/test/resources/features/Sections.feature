@sections

Feature: Check doing everything in one go for Import Voluntary Disclosure Journey

  Scenario: A logged in user is able to walk through the entire flow of IVD as Importer
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    And I want to complete section 3: Underpayments with B00~A00~E00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    And I want to complete section 4: Underpayment Reasons
    Then the user should be on the 'Documents you must upload' page
    And I want to complete section 5: Documents you must upload
    Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And I want to complete section 7: Deferment Details as Importer with no split
    Then the user should be on the 'Check your answers before sending your disclosure' page

  Scenario: A logged in user is able to walk through the entire flow of IVD as Representative
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Representative
    Then the user should be on the 'Tell us what was underpaid' page
    And I want to complete section 3: Underpayments with B00~A00~E00
    Then the user should be on the 'You must tell us the reason for the underpayment' page
    And I want to complete section 4: Underpayment Reasons
    Then the user should be on the 'Documents you must upload' page
    And I want to complete section 5: Documents you must upload
    Then the user should be on the 'Who should we contact if we have questions about this disclosure?' page
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And I want to complete section 7: Deferment Details as Representative with split
    Then the user should be on the 'Do you want to split payment between two deferment accounts?' page
