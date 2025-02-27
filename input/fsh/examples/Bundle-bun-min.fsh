Instance: bun-min
InstanceOf: BundleTWCI
Title: "重大傷病申請證明-送核"
Description: "依據重大傷病申請證明-Bundle TWCI Profile呈現重大傷病申請證明之範例"
Usage: #example

* type = http://hl7.org/fhir/bundle-type#collection

* entry[0].fullUrl = "https://twcore.mohw.gov.tw/ig/ci/Task/tas-min"
* entry[0].resource = tas-min
* entry[1].fullUrl = "https://twcore.mohw.gov.tw/ig/ci/QuestionnaireResponse/queRes-min"
* entry[1].resource = queRes-min
* entry[2].fullUrl = "https://twcore.mohw.gov.tw/ig/ci/Patient/pat-min"
* entry[2].resource = pat-min
* entry[3].fullUrl = "https://twcore.mohw.gov.tw/ig/ci/Condition/con-min"
* entry[3].resource = con-min
