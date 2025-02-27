Profile:        BundleTWCI
Parent:         TWCoreBundle
Id:             Bundle-twci
Title:          "重大傷病申請證明-Bundle TWCI"
Description:    "此重大傷病申請證明-Bundle TWCI Profile說明TWCI IG如何進一步定義臺灣核心-資料交換基本單位（TW Core Bundle） Profile以呈現重大傷病申請證明之內容"
* type = #collection
* type MS

* entry 4..4 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    task 1..1 MS and
    questionnaireResponse 1..1 MS and
    patient 1..1 MS and
    condition 1..1 MS

* entry[task] ^short = "重大傷病申請"
* entry[task].resource 1..1 MS
* entry[task].resource only TaskTWCI

* entry[questionnaireResponse] ^short = "重大傷病申請書回覆"
* entry[questionnaireResponse].resource 1..1 MS
* entry[questionnaireResponse].resource only QuestionnaireResponseTWCI

* entry[patient] ^short = "病人資訊"
* entry[patient].resource 1..1 MS
* entry[patient].resource only PatientTWCI

* entry[condition] ^short = "重大傷病"
* entry[condition].resource 1..1 MS
* entry[condition].resource only ConditionTWCI