@all
  Feature: Testing whether a representative has an EORI

    Scenario: A Representative user logs in and declares that they do not have an EORI
      Given I want to complete section 1: Service Entry for Organisation
      Then the user should be on the 'Are you the importer or their representative?' page
      And the user selects the I am a representative of the importer radio button
      When clicks the Continue button
      Then the user should be on the 'What is the name of the importer?' page
      And the user enters Test User into the importers name input field
      When clicks the Continue button
      Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
      And the user enters AA000AA into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the importer’s address' page
      When clicks the Confirm address button
      Then the user should be on the 'Does the importer have an EORI number?' page
      And the user selects the No radio button
      When clicks the Continue button
      Then the user should be on the 'How many entries are you disclosing an underpayment for?' page

    Scenario: A Representative user logs in and declares that they do have an EORI
      Given I want to complete section 1: Service Entry for Organisation
      Then the user should be on the 'Are you the importer or their representative?' page
      And the user selects the I am a representative of the importer radio button
      When clicks the Continue button
      Then the user should be on the 'What is the name of the importer?' page
      And the user enters Test User into the importers name input field
      When clicks the Continue button
      Then the user should be on the 'What address should we send the importer’s copy of the demand note to?' page
      And the user enters AA000AA into the postcode input field
      When clicks the Continue button
      Then the user should be on the 'Confirm the importer’s address' page
      When clicks the Confirm address button
      Then the user should be on the 'Does the importer have an EORI number?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'What is the importer’s EORI number?' page
      And the user enters GB345834921000 into the EORI input field
      When clicks the Continue button
      Then the user should be on the 'Is the importer VAT registered?' page
      And the user selects the Yes radio button
      When clicks the Continue button
      Then the user should be on the 'How many entries are you disclosing an underpayment for?' page
