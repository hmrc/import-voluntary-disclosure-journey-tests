/*
 * Copyright 2021 HM Revenue & Customs
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package uk.gov.hmrc.test.ui.cucumber.stepdefs

import org.openqa.selenium.By

class CheckYourAnswersStepDef extends ShutdownStepDef {

  And("""^I check that within the Disclosure details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val actualHeader = findBy(By.cssSelector("#main-content > div > div > h2:nth-child(2)")).getText
    assertResult("Disclosure details")(actualHeader)

    field match {
      case "Number of entries" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(1) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "EPU" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(2) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0.govuk-\\!-padding-bottom-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Entry number" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(3) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(3) > dd")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Entry date" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(4) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(4) > dd")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Entry acceptance date before 1 January 2021?" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(5) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(5) > dd")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val actualHeader = findBy(By.cssSelector("#main-content > div > div > h2:nth-child(3)")).getText
    assertResult("Underpayment details")(actualHeader)

    field match {
      case "Customs Duty" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(4) > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(4) > div:nth-child(1) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Import VAT" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(4) > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(4) > div:nth-child(2) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Excise Duty" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(4) > div:nth-child(3) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(4) > div:nth-child(3) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Supporting documents summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val actualHeader = findBy(By.cssSelector("#main-content > div > div > h2:nth-child(4)")).getText
    assertResult("Supporting documents")(actualHeader)

    field match {
      case "1 file uploaded" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(5) > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(5) > div:nth-child(1) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Your details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val actualHeader = findBy(By.cssSelector("#main-content > div > div > h2:nth-child(5)")).getText
    assertResult("Your details")(actualHeader)

    field match {
      case "Name" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(1) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Email address" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(2) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Telephone number" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(3) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(3) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "1st Line Address" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(4) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(4) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "2nd Line Address" => findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(5) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
      case "Postcode" => findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(6) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
      case "Country" => findBy(By.cssSelector("#main-content > div > div > dl:nth-child(6) > div:nth-child(7) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Payment information summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val actualHeader = findBy(By.cssSelector("#main-content > div > div > h2:nth-child(6)")).getText
    assertResult("Payment information")(actualHeader)

    field match {
      case "By deferment?" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(7) > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(7) > div:nth-child(1) > dd.govuk-summary-list__value.govuk-\\!-padding-top-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }
}
