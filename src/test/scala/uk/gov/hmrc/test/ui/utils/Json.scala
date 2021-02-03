package uk.gov.hmrc.test.ui.utils

object Json {

  def upscanSuccessCallback(reference: String): String =
  s"""{
                                |    "reference" : $reference,
                                |    "fileStatus" : "READY",
                                |    "downloadUrl" : "https://bucketName.s3.eu-west-2.amazonaws.com?1235676",
                                |    "uploadDetails": {
                                |        "uploadTimestamp": "2018-04-24T09:30:00Z",
                                |        "checksum": "396f101dd52e8b2ace0dcf5ed09b1d1f030e608938510ce46e7a5c7a4e775100",
                                |        "fileName": "test.pdf",
                                |        "fileMimeType": "application/pdf"
                                |    }
                                |}""".stripMargin

}
