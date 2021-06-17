@all @deferment
Feature: Testing Deferments for importers

  Scenario: Importer declares that they have import VAT and other duties, selects to pay via another payment method,
  and is redirected to check your answers
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with Import VAT (B00)~Customs Duty (A00)
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload - Document: TestDocument.pdf
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the Another payment method radio button
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page

  Scenario: Importer declares that they have import VAT and other duties, selects to pay by duty deferment account,
  and is redirected to the enter DAN flow
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with Import VAT (B00)~Customs Duty (A00)
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload - Document: TestDocument.pdf
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'What is the deferment account number?' page
    And the user enters 0123456 into the Deferment account number input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page

  Scenario: Importer declares that they only have other duties, selects to pay by duty deferment account,
  and is redirected to the enter DAN flow
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    And I want to complete section 3: Underpayments with Customs Duty (A00)
    And I want to complete section 4: Underpayment Reasons
    And I want to complete section 5: Documents you must upload - Document: TestDocument.pdf
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the duty owed?' page
    And the user selects the By duty deferment account radio button
    When clicks the Continue button
    Then the user should be on the 'What is the deferment account number?' page
    And the user enters 0123456 into the Deferment account number input field
    When clicks the Continue button
    Then the user should be on the 'Check your answers before sending your disclosure' page