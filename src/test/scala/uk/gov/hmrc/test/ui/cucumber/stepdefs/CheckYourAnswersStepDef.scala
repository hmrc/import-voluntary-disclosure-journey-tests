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

  And("""^I check that within the Entry details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val expectedHeading = "Entry details"
    val headingId = expectedHeading.replaceAll("\\s","")
    val actualHeading = findBy(By.cssSelector(s"""h2[id="${headingId}"]""")).getText
    assertResult(expectedHeading)(actualHeading)

    field match {
      case "Number of entries" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "EPU" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Entry number" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Entry date" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(4) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(4) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Entry acceptance date before 1 January 2021?" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(5) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(5) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "One customs procedure code?" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(6) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(6) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Customs procedure code" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(7) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(7) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the About the Importer details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val expectedHeading = "About the Importer"
    val headingId = expectedHeading.replaceAll("\\s","")
    val actualHeading = findBy(By.cssSelector(s"""h2[id="${headingId}"]""")).getText
    assertResult(expectedHeading)(actualHeading)

    field match {
      case "Name" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Address" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value.replaceAll("\\s", ""))(actualFieldValue.replaceAll("\\s", ""))
      case "Importer has EORI number?" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Importer EORI number" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(4) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(4) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Importer VAT registered?" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(5) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(5) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val expectedHeading = "Underpayment details"
    val headingId = expectedHeading.replaceAll("\\s","")
    val actualHeading = findBy(By.cssSelector(s"""h2[id="${headingId}"]""")).getText
    assertResult(expectedHeading)(actualHeading)

    field match {
      case "1 file uploaded" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Your details summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val expectedHeading = "Your details"
    val headingId = expectedHeading.replaceAll("\\s","")
    val actualHeading = findBy(By.cssSelector(s"""h2[id="${headingId}"]""")).getText
    assertResult(expectedHeading)(actualHeading)

    field match {
      case "Importer or representative?" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Contact details" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Name" => // TODO - remove when changeing to contact details
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(1) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Email address" => // TODO - remove when changeing to contact details
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(2) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Telephone number" => // TODO - remove when changeing to contact details
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Address" =>
        val actualField = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dt""")).getText
        val actualFieldValue = findBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div:nth-child(3) > dd.govuk-summary-list__value""")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Your details summary that the (.*) contains 1st line: (.*), 2nd line: (.*), postcode: (.*) and country: (.*)$""") { (field: String, line1: String, line2: String, postcode: String, country: String) =>
    val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(9) > div:nth-child(4) > dt")).getText
    val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(9) > div:nth-child(4) > dd.govuk-summary-list__value")).getText.trim
    val expectedFieldValue =
      s"""|$line1
          |$line2
          |$postcode
          |$country""".stripMargin
    assertResult(field)(actualField)
    assertResult(expectedFieldValue)(actualFieldValue)
  }

  And("""^I check that within the Payment information summary that the value of (.*) is (.*)$""") { (field: String, value: String) =>
    val actualHeader = findBy(By.cssSelector("#main-content > div > div > h2:nth-child(10)")).getText
    assertResult("Payment information")(actualHeader)

    field match {
      case "By deferment?" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(11) > div > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(11) > div > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment box summary that the Entry level value of (.*) is (.*)$""") { (field: String, value: String) =>
    field match {
      case "Box number" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Original value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Amended value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment box summary that the Item level value of (.*) is (.*)$""") { (field: String, value: String) =>
    field match {
      case "Box number" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Item number" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Original value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Amended value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(4) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(4) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment Reason Change that the Entry level value of (.*) is (.*)$""") { (field: String, value: String) =>
    field match {
      case "Original value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Amended value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment Reason Change that the Item level value of (.*) is (.*)$""") { (field: String, value: String) =>
    field match {
      case "Item number" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Original value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Amended value" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dd.govuk-summary-list__value")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I check that within the Underpayment box summary that entry (.*) has a value of (.*) and level of (.*)$""") { (pos: String, boxNumber: String, level: String) =>
    val actualBoxNumber = findBy(By.cssSelector(s"#main-content > div > div > dl > div:nth-child($pos) > dt")).getText
    val actualLevel = findBy(By.cssSelector(s"#main-content > div > div > dl > div:nth-child($pos) > dd.govuk-summary-list__value")).getText
    assertResult(boxNumber)(actualBoxNumber)
    assertResult(level)(actualLevel)
  }

  And("""^I check that within the Underpayment summary that the (.*) entry has a duty value of (.*) and total value of (.*)$""") { (pos: String, dutyType: String, dutyValue: String) =>
    pos match {
      case "1st" =>
        val actualDutyType = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(1) > dt")).getText
        val actualDutyValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(1) > dd.govuk-summary-list__value.govuk-summary-list__value")).getText
        assertResult(dutyType)(actualDutyType)
        assertResult(dutyValue)(actualDutyValue)
      case "2nd" =>
        val actualDutyType = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(2) > dt")).getText
        val actualDutyValue = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(2) > dd.govuk-summary-list__value.govuk-summary-list__value")).getText
        assertResult(dutyType)(actualDutyType)
        assertResult(dutyValue)(actualDutyValue)
      case _ => fail(s"Position: $pos is not valid, please investigate")
    }
  }

  And("""^I check that within the Confirm underpayment details page the total (.*) is a value of (.*)$""") { (field: String, value: String) =>
    field match {
      case "Amount that was paid" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__value.govuk-\\!-padding-bottom-0")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case "Amount that should have been paid" =>
        val actualField = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dt")).getText
        val actualFieldValue = findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd")).getText
        assertResult(field)(actualField)
        assertResult(value)(actualFieldValue)
      case _ => fail(s"Field: $field is not valid, please investigate")
    }
  }

  And("""^I click the change link on row (.*) in the (.*) section on the Check Your Answers page$""") { (pos: Int, section: String) =>
    val headingId = section.replaceAll("\\s","")
    findElementsBy(By.cssSelector(s"""h2[id="${headingId}"] ~ dl > div > dd.govuk-summary-list__actions > a""")).get(pos-1).click()
  }
}
