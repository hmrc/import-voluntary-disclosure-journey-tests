@all @accessibility

Feature: Single flow for Importer and Representative

  Scenario: A logged in user is able to walk through the entire flow of IVD as Importer
    Given I want to complete section 1: Service Entry for Organisation
    And I want to complete section 2: Entry Details as Importer
    Then the user should be on the 'Tell us what was underpaid' page
    And I want to complete section 3: Underpayments with Customs Duty (A00)~Import VAT (B00)
    Then the user should be on the 'Next, tell us the reason for the underpayment' page
    And I want to complete section 4: Underpayment Reasons
    Then the user should be on the 'Documents you must upload' page
    And I want to complete section 5: Documents you must upload - Document: TestDocument.pdf
    Then the user should be on the 'What are your contact details?' page
    And I want to complete section 6: Contact Details
    Then the user should be on the 'How will you pay for the import VAT and duty owed?' page
    And I want to complete section 7: Deferment Details as Importer with no split
    Then the user should be on the 'Check your answers before sending your disclosure' page
    When clicks the Accept and send button
    Then the user should be on the 'Disclosure sent' page
    And I clear down the cookies
