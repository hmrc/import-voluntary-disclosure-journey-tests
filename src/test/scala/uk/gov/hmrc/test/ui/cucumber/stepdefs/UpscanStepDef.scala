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
import uk.gov.hmrc.test.ui.pages.ImportVoluntaryDisclosureLandingPage
import uk.gov.hmrc.test.ui.utils.UpscanJson


class UpscanStepDef extends ShutdownStepDef {

  var callbackUrl: String = ""
  var redirectUrl: String = ""
  var refKey: String = ""

  Then("""^the user navigates the '(.*)' page$""") { (page: String) =>
    page match {
      case "supporting-documentation" => driver.navigate().to(ImportVoluntaryDisclosureLandingPage.url + "/disclosure/supporting-documentation-format")
      case "box-guidance" => driver.navigate().to(ImportVoluntaryDisclosureLandingPage.url + "/disclosure/reason-introduction")
      case _ => fail(s"$page is not a directly navigable page")
    }
  }

  And("""^I get the data from the page$""") { () =>
    callbackUrl = driver.findElement(By.name("x-amz-meta-callback-url")).getAttribute("value")
    redirectUrl = driver.findElement(By.name("success_action_redirect")).getAttribute("value")
    refKey = driver.findElement(By.name("key")).getAttribute("value")
  }

  And("""^I call the success redirect""") { () =>
    driver.navigate().to(redirectUrl)
  }

  And("""^I call the upscan callback handler and get response (.*)$""") { (expectedStatus: Int) =>
    val actualStatus = requestPOST(callbackUrl, UpscanJson.upscanSuccessCallback(refKey), Map("Content-Type" -> "application/json"))
    assertResult(expectedStatus)(actualStatus)
  }

  And("""^the user should be either waiting for file upload or completed upload$""") { () =>

    def sleep(millis: Int = 1000) = Thread.sleep(millis)

    def comparisonCheck(count: Int): Boolean = {
      val actualPage = driver.findElement(By.cssSelector("h1")).getText
      if (actualPage != "You have uploaded 1 file" && count < 60) {
        sleep(1500)
        if (findBy(By.className("govuk-button")).isDisplayed) {
          findBy(By.className("govuk-button")).click()
          comparisonCheck(count + 1)
        } else {
          val actualPage = driver.findElement(By.cssSelector("h1")).getText
          println(actualPage)
          driver.navigate().to("http://localhost:7950/disclose-import-taxes-underpayment/disclosure/upload-file/polling")
          comparisonCheck(count + 1)
        }
      } else {
        if (actualPage == "You have uploaded 1 file") true
        else {
          fail("Failed to redirect to the 'The file has been uploaded successfully' page")
        }
      }
    }

    assert(comparisonCheck(0))

  }

  And("""^the user selects file (.*) in the file input field$""") { (value: String) =>
    val path = Paths.get("").toAbsolutePath
    findById("file").sendKeys(path + value)
  }

  And("""^there should be '(.*)' files on the page$""") { (number: String) =>
    val actualNumber = driver.findElement(By.tagName("h1")).getText
      .split("\\D+").filter(_.nonEmpty).headOption.getOrElse("no digits found")
    assertResult(number)(actualNumber)
  }

}
