@all @startPage
  Feature: Testing new start page

  Scenario: Testing when a user attempts to log in first going through the start page
  Given a user goes through the start page to access the Import Voluntary Disclosure Service
  Then the user should be on the 'Disclose an underpayment of Customs Duty or import VAT' page
  When clicks the Start Now button
  When a user logs in to access the Import Voluntary Disclosure Service from the start page
  Then the user should be on the 'Confirm you want to disclose an underpayment using this EORI number' page
  And I clear down the cookies
