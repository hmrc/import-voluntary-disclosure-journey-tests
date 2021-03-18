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
import uk.gov.hmrc.test.ui.pages.{AuthLoginStubPage, ImportVoluntaryDisclosureLandingPage}

class SectionsStepDef extends ShutdownStepDef {

  Given("""^I want to complete section 1: Service Entry""") { () =>
    // Login through Auth
    driver.navigate().to(AuthLoginStubPage.url)
    driver.findElement(By.name("redirectionUrl")).clear()
    driver.findElement(By.name("redirectionUrl")).sendKeys(ImportVoluntaryDisclosureLandingPage.url)
    driver.findElement(By.name("enrolment[0].name")).clear()
    driver.findElement(By.name("enrolment[0].name")).sendKeys("HMRC-CTS-ORG")
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].name")).clear()
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].name")).sendKeys("EORINumber")
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].value")).clear()
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].value")).sendKeys("GB987654321000")
    driver.findElement(By.cssSelector("Input[value='Submit']")).click()
    // Click continue on Confirm EORI
    findBy(By.className("govuk-button")).click()
  }

  And("""^I want to complete section 2: Entry Details as (.*)""") { (userType: String) =>
    // Select user type and click through to Num Entries
    if (userType == "Importer") {
      clickById("value")
      findBy(By.className("govuk-button")).click()
    } else {
      clickById("value-2")
      findBy(By.className("govuk-button")).click()
      findById("fullName").sendKeys("Importers Name")
      findBy(By.className("govuk-button")).click()
      findById("postcode").sendKeys("AA000AA")
      findBy(By.className("govuk-button")).click()
      findBy(By.className("govuk-button")).click()
      clickById("value")
      findBy(By.className("govuk-button")).click()
      findById("importerEORI").sendKeys("GB345834921000")
      findBy(By.className("govuk-button")).click()
    }
    // Select One Entry
    clickById("value")
    findBy(By.className("govuk-button")).click()
    // Enter Entry Details
    findById("epu").sendKeys("123")
    findById("entryNumber").sendKeys("123456Q")
    findById("entryDate.day").sendKeys("01")
    findById("entryDate.month").sendKeys("01")
    findById("entryDate.year").sendKeys("2020")
    findBy(By.className("govuk-button")).click()
    // Acceptance entry date
    clickById("value")
    findBy(By.className("govuk-button")).click()
    // Enter CPC
    findById("cpc").sendKeys("1234A67")
    findBy(By.className("govuk-button")).click()
  }

  And("""^I want to complete section 3: Underpayments with (.*)""") { (underpayments: String) =>
    // Click through guidance page
    findBy(By.className("govuk-button")).click()
    // Select the desired underpayment types
    if (underpayments.contains("Customs Duty")) clickById("value")
    if (underpayments.contains("Import VAT")) clickById("value-2")
    if (underpayments.contains("Excise Duty")) clickById("value-3")
    findBy(By.className("govuk-button")).click()
    // loop through adding original and amended amounts
    underpayments.split("~").map { ut =>
      findById("original").clear()
      findById("original").sendKeys("100")
      findById("amended").clear()
      findById("amended").sendKeys("200")
      findBy(By.className("govuk-button")).click()
    }
    // Confirm Summary
    findBy(By.className("govuk-button")).click()
  }

}
