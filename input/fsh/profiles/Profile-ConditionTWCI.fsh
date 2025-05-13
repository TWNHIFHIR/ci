Profile:        ConditionTWCI
Parent:         TWCoreCondition
Id:             Condition-twci
Title:          "重大傷病-Condition TWCI"
Description:    "此重大傷病-Condition TWCI Profile說明TWCI IG如何進一步定義臺灣核心-病情、問題或診斷（TW Core Condition） Profile以呈現重大傷病之內容"
* subject only Reference(PatientTWCI)
* category from NHICICategory
* category.coding 1..1
* category.coding.code 1..1
* category.coding.code = #01
* category.coding.system = "https://twcore.mohw.gov.tw/ig/ci/CodeSystem/nhi-category"
* category.coding.code ^short = "固定填「01」(癌症)。"
* category ^short = "重大傷病類別"