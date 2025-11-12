Instance: bun-noillness
InstanceOf: BundleTWCI
Title: "重大傷病申請證明-無換發評估表"
Description: "依據重大傷病申請證明-Bundle TWCI Profile呈現重大傷病申請證明-無換發評估表之範例"
Usage: #example

* type = http://hl7.org/fhir/bundle-type#collection

* entry[task].fullUrl = "https://nhicore.nhi.gov.tw/ci/Task/tas-noillness"
* entry[task].resource = tas-noillness
* entry[questionnaireResponse].fullUrl = "https://nhicore.nhi.gov.tw/ci/QuestionnaireResponse/queRes-noillness"
* entry[questionnaireResponse].resource = queRes-noillness
* entry[patient].fullUrl = "https://nhicore.nhi.gov.tw/ci/Patient/pat-min"
* entry[patient].resource = pat-min
* entry[condition].fullUrl = "https://nhicore.nhi.gov.tw/ci/Condition/con-min"
* entry[condition].resource = con-min
