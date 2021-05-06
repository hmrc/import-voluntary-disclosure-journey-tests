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


class IVDStepDef extends ShutdownStepDef {

  Given("""^a user logs in to access the Import Voluntary Disclosure Service""") { () =>
    driver.navigate().to(AuthLoginStubPage.url)
    driver.findElement(By.name("redirectionUrl")).clear()
    driver.findElement(By.name("redirectionUrl")).sendKeys(ImportVoluntaryDisclosureLandingPage.url)
    driver.findElement(By.name("enrolment[0].name")).clear()
    driver.findElement(By.cssSelector(s"#affinityGroupSelect > option:nth-child(2)")).click()
    driver.findElement(By.name("enrolment[0].name")).sendKeys("HMRC-CTS-ORG")
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].name")).clear()
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].name")).sendKeys("EORINumber")
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].value")).clear()
    driver.findElement(By.name("enrolment[0].taxIdentifier[0].value")).sendKeys("GB987654321000")
    driver.findElement(By.cssSelector("Input[value='Submit']")).click()
  }

  Given("""^an unauthorised user attempts to log in to access the Import Voluntary Disclosure Service for (.*)""") { (affinityGroup: String) =>
    val groupSelector = affinityGroup match {
      case "Individual" => 1
      case "Organisation" => 2
      case _ => 3
    }
    driver.navigate().to(AuthLoginStubPage.url)
    driver.findElement(By.cssSelector(s"#affinityGroupSelect > option:nth-child($groupSelector)")).click()
    driver.findElement(By.name("redirectionUrl")).clear()
    driver.findElement(By.name("redirectionUrl")).sendKeys(ImportVoluntaryDisclosureLandingPage.url)
    if(groupSelector == 1 || groupSelector == 3) {
      driver.findElement(By.name("enrolment[0].name")).sendKeys("HMRC-CTS-ORG")
      driver.findElement(By.name("enrolment[0].taxIdentifier[0].name")).clear()
      driver.findElement(By.name("enrolment[0].taxIdentifier[0].name")).sendKeys("EORINumber")
      driver.findElement(By.name("enrolment[0].taxIdentifier[0].value")).clear()
      driver.findElement(By.name("enrolment[0].taxIdentifier[0].value")).sendKeys("GB987654321000")
    }
    driver.findElement(By.cssSelector("Input[value='Submit']")).click()
  }

  Then("""^the user should be on the '(.*)' page$""") { (page: String) =>
    val actualPage: String = driver.findElement(By.tagName("h1")).getText
    assertResult(page)(actualPage)
  }

  Then("""^the user should be on the temporary: (.*) page$""") { (page: String) =>
    val actualPage: String = driver.findElement(By.tagName("body")).getText
    assertResult(page)(actualPage)
  }

  Then("""^the page should contain (.*) input$""") { name: String =>
    val input = driver.findElement(By.name(name))
    assertResult("Callback")(input.getAttribute("value"))
  }

  And("""^the user selects the (.*) radio button$""") { button: String =>
    button match {
      case "Importer" | "One Entry" | "Yes" | "Yes, I want to use two deferment accounts" |
           "My deferment account"  => clickById("value")
      case "Representative" | "No, I want to use one deferment account" |
           "The importer’s account and I have authority to use it"  => clickById("value-2")
      case "The importer’s account and I have standing authority to use it"  => clickById("value-3")
      case "Box 22 Invoice currency and total amount invoiced" => clickBySelector("input[value=\"22\"]")
      case "Box 33 Commodity code" => clickBySelector("input[value=\"33\"]")
      case "Box 34 Country of origin code" => clickBySelector("input[value=\"34\"]")
      case "Box 35 Gross mass" => clickBySelector("input[value=\"35\"]")
      case "Box 36 Preference" => clickBySelector("input[value=\"36\"]")
      case "Box 37 Procedure (customs procedure code)" => clickBySelector("input[value=\"37\"]")
      case "Box 38 Net mass" => clickBySelector("input[value=\"38\"]")
      case "Box 39 Quota" => clickBySelector("input[value=\"39\"]")
      case "Box 41 Supplementary units" => clickBySelector("input[value=\"41\"]")
      case "Box 42 Item price" => clickBySelector("input[value=\"42\"]")
      case "Box 43 Valuation method code" => clickBySelector("input[value=\"43\"]")
      case "Box 45 Adjustment" => clickBySelector("input[value=\"45\"]")
      case "Box 46 Statistical value" => clickBySelector("input[value=\"46\"]")
      case "Box 62 Air transport costs" => clickBySelector("input[value=\"62\"]")
      case "Box 63 AWB or freight charges" => clickBySelector("input[value=\"63\"]")
      case "Box 66 Insurance" => clickBySelector("input[value=\"66\"]")
      case "Box 67 Other charges of deductions" => clickBySelector("input[value=\"67\"]")
      case "Box 68 Adjustment for VAT value" => clickBySelector("input[value=\"68\"]")
      case "No" => clickById("value-no")
      case "Another payment method" => clickBySelector("#main-content > div > div > form > div > fieldset > div > div:nth-child(2) > label")
      case "By duty deferment account" => clickBySelector("#main-content > div > div > form > div > fieldset > div > div:nth-child(1) > label")
      case "2 Other Place, Some District, Anytown, Somerset, ZZ1 1ZZ" => clickById("addressId") // first element
      case "Import VAT" => clickById("B00")
      case "Customs Duty" => clickById("A00")
      case "Excise Duty" => clickById("E00")
      case "Additional Duty" => clickById("A20")
      case "Definitive Anti-Dumping Duty" => clickById("A30")
      case "Provisional Anti-Dumping Duty" => clickById("A35")
      case "Definitive Countervailing Duty" => clickById("A40")
      case "Provisional Countervailing Duty" => clickById("A45")
      case "Customs Duty on Agricultural Products" => clickById("A10")
      case "Compensatory Duty" => clickById("D10")
      case _ => fail(s"$button is not a valid radio button")
    }
  }

  And("""^the user enters (.*) into the (.*) input field$""") { (value: String, field: String) =>
    field match {
      case "EPU number" =>
        findById("epu").clear()
        findById("epu").sendKeys(value)
      case "Entry number" =>
        findById("entryNumber").clear()
        findById("entryNumber").sendKeys(value)
      case "Entry date day" =>
        findById("entryDate.day").clear()
        findById("entryDate.day").sendKeys(value)
      case "Entry date month" =>
        findById("entryDate.month").clear()
        findById("entryDate.month").sendKeys(value)
      case "Entry date year" =>
        findById("entryDate.year").clear()
        findById("entryDate.year").sendKeys(value)
      case "Original amount" =>
        findById("original").clear()
        findById("original").sendKeys(value)
      case "Amended amount" =>
        findById("amended").clear()
        findById("amended").sendKeys(value)
      case "Customs procedure code" =>
        findById("cpc").sendKeys(value)
      case "Name" =>
        findById("fullName").clear()
        findById("fullName").sendKeys(value)
      case "Email address" =>
        findById("email").clear()
        findById("email").sendKeys(value)
      case "UK telephone number" =>
        findById("phoneNumber").clear()
        findById("phoneNumber").sendKeys(value)
      case "Box Number" =>
        findById("value").clear()
        findById("value").sendKeys(value)
      case "Item Number" =>
        findById("itemNumber").clear()
        findById("itemNumber").sendKeys(value)
      case "Upload document" => {
        val path = Paths.get("").toAbsolutePath
        findById("file").sendKeys(path + value)
      }
      case "Original value" =>
        findById("original").clear()
        findById("original").sendKeys(value)
      case "Amended value" =>
        findById("amended").clear()
        findById("amended").sendKeys(value)
      case "importers name" => findById("fullName").sendKeys(value)
      case "postcode" => findById("postcode").sendKeys(value)
      case "Country" => findById("countryCode").sendKeys(s"$value\n")
      case "Address Line 1" => findById("line1").sendKeys(value)
      case "Address Line 2" => findById("line2").sendKeys(value)
      case "Address Line 3" => findById("line3").sendKeys(value)
      case "Town" => findById("town").sendKeys(value)
      case "EORI" => findById("importerEORI").sendKeys(value)
      case "More Information" => findById("value").sendKeys(value)
      case "Deferment account number" => findById("value").sendKeys(value)
      case "Deferment account number (representative)" => findById("accountNumber").sendKeys(value)
      case _ => fail(s"$field is not a valid input field")
    }

  }

  And("""^clicks the (.*) button$""") { button: String =>
    button match {
      case "Continue" | "Refresh" | "Accept and send" | "Confirm address" | "Confirm and continue" => findBy(By.className("govuk-button")).click()
      case _ => fail(s"$button is not a valid button")
    }
  }

  And("""^they select the (.*) checkbox$""") { checkbox: String=>
    checkbox match{
      case ("Amendment import declaration") => clickById("importAndEntry")
      case ("Airway bill") => clickById("airwayBill")
      case ("Proof of origin") => clickById("originProof")
      case ("Other documentation") => clickById("other")
      case _ => fail(s"$checkbox is not a valid checkbox")
    }
  }

  And("""^the user clicks the (.*) link$""") { (link: String) =>
    findBy(By.linkText(link)).click()
  }

  And("""^the user clicks the (.*) (.*) link for (.*) on the (.*)$""") { (linkPos: String, link: String, field: String, page: String) =>
    link match {
      case "change" if page == "Underpayment amount summary page" =>
        linkPos match {
          case "1st" => findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div.govuk-summary-list__row.govuk-summary-list__row--no-border > dd.govuk-summary-list__actions.govuk-\\!-padding-bottom-0 > a")).click()
          case "2nd" => findBy(By.cssSelector("#main-content > div > div > dl:nth-child(5) > div.govuk-summary-list__row.govuk-summary-list__row--no-border > dd.govuk-summary-list__actions.govuk-\\!-padding-bottom-0 > a")).click()
          case "3rd" => findBy(By.cssSelector("#main-content > div > div > dl:nth-child(7) > div.govuk-summary-list__row.govuk-summary-list__row--no-border > dd.govuk-summary-list__actions.govuk-\\!-padding-bottom-0 > a")).click()
          case _ => fail(s"$link is not a valid link")
        }
      case "change" if page == "Confirm underpayment page" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__actions.govuk-\\!-padding-bottom-0 > a")).click()
      case "change" =>
        linkPos match {
          case "1st" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__actions > a")).click()
          case "2nd" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd.govuk-summary-list__actions > a")).click()
          case "3rd" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dd.govuk-summary-list__actions > a")).click()
          case _ => fail(s"$link is not a valid link")
        }
      case "remove" if page == "Upload Another page" =>
        linkPos match {
          case "1st" => findBy(By.cssSelector("li:nth-child(1) > .hmrc-add-to-a-list__remove > a")).click()
          case "2nd" => findBy(By.cssSelector("li:nth-child(2) > .hmrc-add-to-a-list__remove > a")).click()
          case "3rd" => findBy(By.cssSelector("li:nth-child(3) > .hmrc-add-to-a-list__remove > a")).click()
          case _ => fail(s"$link is not a valid link")
        }
      case "remove" =>
        linkPos match {
          case "1st" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(1) > dd.govuk-summary-list__actions > a")).click()
          case "2nd" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(2) > dd.govuk-summary-list__actions > a")).click()
          case "3rd" => findBy(By.cssSelector("#main-content > div > div > dl > div:nth-child(3) > dd.govuk-summary-list__actions > a")).click()
          case _ => fail(s"$link is not a valid link")
        }
      case _ => fail(s"$link is not a valid link")
    }
  }

  And("""^the (.*) is (.*) on the Underpayment amount summary page$""") { (field: String, expectedAmount: String) =>
    field match {
      case "Customs duty original amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div.govuk-summary-list__row.govuk-summary-list__row--no-border > dd.govuk-summary-list__value.govuk-\\!-padding-bottom-0")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Customs duty amended amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(2) > dd")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Customs duty due to HMRC amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(3) > div:nth-child(3) > dd")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Import VAT original amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(5) > div.govuk-summary-list__row.govuk-summary-list__row--no-border > dd.govuk-summary-list__value.govuk-\\!-padding-bottom-0")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Import VAT amended amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(5) > div:nth-child(2) > dd")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Import VAT due to HMRC amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(5) > div:nth-child(3) > dd")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Excise duty original amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(7) > div.govuk-summary-list__row.govuk-summary-list__row--no-border > dd.govuk-summary-list__value.govuk-\\!-padding-bottom-0")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Excise duty amended amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(7) > div:nth-child(2) > dd")).getText
        assertResult(expectedAmount)(actualAmount)
      case "Excise duty due to HMRC amount" =>
        val actualAmount: String = findBy(By.cssSelector("#main-content > div > div > dl:nth-child(7) > div:nth-child(3) > dd")).getText
        assertResult(expectedAmount)(actualAmount)

      case _ => fail(s"$field is not a valid field")
    }
  }

  And("""^the user clicks browser back""") {
    driver.navigate().back()
  }

}
