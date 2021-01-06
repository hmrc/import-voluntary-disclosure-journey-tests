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
import uk.gov.hmrc.test.ui.pages.{AuthLoginStubPage, ImportVoluntaryDisclsureLandingPage}

class IVDStepDef extends ShutdownStepDef {

  Given("""^a user logs in to access the Import Voluntary Disclosure Service""") { () =>
    driver.navigate().to(AuthLoginStubPage.url)
    driver.findElement(By.name("redirectionUrl")).clear()
    driver.findElement(By.name("redirectionUrl")).sendKeys(ImportVoluntaryDisclsureLandingPage.url)
    driver.findElement(By.cssSelector("Input[value='Submit']")).click()
  }

  Then("""^the user should be on the '(.*)' page$""") { (page: String) =>
    val actualPage: String = driver.findElement(By.tagName("h1")).getText
    assertResult(page)(actualPage)
  }

  And("""^the user selects the (.*) radio button$""") { button: String =>
    button match {
      case "Importer" | "One Entry" => clickById("value")
      case "Representative" => clickById("value-2")
      case _ => fail(s"$button is not a valid radio button")
    }
  }

  And("""^the user enters a (.*) into the (.*) input field$""") { (value: String, field: String) =>
    field match {
      case "EPU number" => findById("epu").sendKeys(value)
      case "Entry number" => findById("entryNumber").sendKeys(value)
      case "Entry date day" => findById("entryDate.day").sendKeys(value)
      case "Entry date month" => findById("entryDate.month").sendKeys(value)
      case "Entry date year" => findById("entryDate.year").sendKeys(value)
      case _ => fail(s"$field is not a valid input field")
    }

  }

  And("""^clicks the (.*) button$""") { button: String =>
    button match {
      case "Save and continue" | "Continue" | "Confirm" | "Accept and continue" => findBy(By.className("govuk-button")).click()
      case _ => fail(s"$button is not a valid button")
    }
  }

}
