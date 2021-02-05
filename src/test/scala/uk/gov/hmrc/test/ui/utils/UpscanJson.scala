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

package uk.gov.hmrc.test.ui.utils

object UpscanJson {

  def upscanSuccessCallback(reference: String): String =
  s"""{
                                |    "reference" : "$reference",
                                |    "fileStatus" : "READY",
                                |    "downloadUrl" : "https://bucketName.s3.eu-west-2.amazonaws.com?1235676",
                                |    "uploadDetails": {
                                |        "uploadTimestamp": "2018-04-24T09:30:00Z",
                                |        "checksum": "396f101dd52e8b2ace0dcf5ed09b1d1f030e608938510ce46e7a5c7a4e775100",
                                |        "fileName": "TestDocument.pdf",
                                |        "fileMimeType": "application/pdf"
                                |    }
                                |}""".stripMargin

}
