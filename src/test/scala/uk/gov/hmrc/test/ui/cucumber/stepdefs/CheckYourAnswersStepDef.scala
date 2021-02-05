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

import java.nio.file.Paths

import org.openqa.selenium.By
import uk.gov.hmrc.test.ui.pages.{AuthLoginStubPage, ImportVoluntaryDisclosureLandingPage}


class CheckYourAnswersStepDef extends ShutdownStepDef {

  And("""^I check that within the (.*) summary that the value of (.*) is (.*)$""") { (header: String, field: String, value: String) =>
    header match {
      case "Disclosure details" =>
        val actualText = field match {
          case "Number of entries" => findBy(By.cssSelector("")).getText
          case "EPU" => findBy(By.cssSelector("")).getText
          case "Entry number" => findBy(By.cssSelector("")).getText
          case "Entry date" => findBy(By.cssSelector("")).getText
          case _ => fail(s"Field: $field is not valid, please investigate")
        }
        assertResult(value)(actualText)
      case "Underpayment details" =>
        val actualText = field match {
          case "Customs Duty" => findBy(By.cssSelector("")).getText
          case "Import VAT" => findBy(By.cssSelector("")).getText
          case "Excise Duty" => findBy(By.cssSelector("")).getText
          case _ => fail(s"Field: $field is not valid, please investigate")
        }
        assertResult(value)(actualText)
      case "Supporting documents" =>
        val actualText = field match {
          case "1 file uploaded" => findBy(By.cssSelector("")).getText
          case _ => fail(s"Field: $field is not valid, please investigate")
        }
        assertResult(value)(actualText)
      case "Your details" =>
        val actualText = field match {
          case "Name" => findBy(By.cssSelector("")).getText
          case "Email address" => findBy(By.cssSelector("")).getText
          case "Telephone number" => findBy(By.cssSelector("")).getText
          case "1st Line Address" => findBy(By.cssSelector("")).getText
          case "2nd Line Address" => findBy(By.cssSelector("")).getText
          case "Postcode" => findBy(By.cssSelector("")).getText
          case "Country" => findBy(By.cssSelector("")).getText
          case _ => fail(s"Field: $field is not valid, please investigate")
        }
        assertResult(value)(actualText)
      case "Payment information" =>
        val actualText = field match {
          case "By deferment?" => findBy(By.cssSelector("")).getText
          case _ => fail(s"Field: $field is not valid, please investigate")
        }
        assertResult(value)(actualText)
      case _ => fail(s"Header: $header is not valid, please investigate")
    }

  }
}
