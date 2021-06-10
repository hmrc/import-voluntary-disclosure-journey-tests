@all @auth @smoke
  Feature: Testing when a user attempts to log in

    Scenario: An Organisation with no enrolment is handed off to Eori Common Component
      When a user attempts to log in to access the Import Voluntary Disclosure Service with no CTS enrolment and Organisation affinity group
      Then the url should contain '/customs-enrolment-services/ivd/subscribe'

    Scenario: An individual with no enrolment is handed off to Eori Common Component
      When a user attempts to log in to access the Import Voluntary Disclosure Service with no CTS enrolment and Individual affinity group
      Then the url should contain '/customs-enrolment-services/ivd/subscribe'

    Scenario: An Agent user is unable to access the IVD service
      When a user attempts to log in to access the Import Voluntary Disclosure Service with no CTS enrolment and Agent affinity group
      Then the user should be on the 'You cannot access this service to disclose a Customs Duty or import VAT underpayment' page

    Scenario: An Organisation with valid enrolment is allowed to access service
      When a user attempts to log in to access the Import Voluntary Disclosure Service with valid CTS enrolment and Organisation affinity group
      Then the user should be on the 'Confirm you want to disclose an underpayment using this EORI number' page

    Scenario: An individual with valid enrolment is allowed to access service
      When a user attempts to log in to access the Import Voluntary Disclosure Service with valid CTS enrolment and Individual affinity group
      Then the user should be on the 'Confirm you want to disclose an underpayment using this EORI number' page

