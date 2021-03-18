@background

Feature: Check doing everything in one go for Import Voluntary Disclosure Journey

  Scenario: A logged in user is able to walk through the entire flow of IVD
    Given I want to complete section 1: Service Entry
    And I want to complete section 2: Entry Details as Representative
#    Then the user should be on the 'Tell us what was underpaid' page
    And I want to complete section 3: Underpayments with "Customs Duty~Import VAT~Excise Duty"
    Then the user should be on the 'You must tell us the reason for the underpayment' page
