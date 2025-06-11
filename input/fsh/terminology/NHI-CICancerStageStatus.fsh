CodeSystem: CancerStageStatusCodes
Id: nhi-cancerstage-status
Title: "NHI-健保重大傷病-癌症狀態"
Description: "臺灣衛生福利部中央健康保險署「癌症狀態」代碼，代碼出版日期：2025-06-11；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-06-11"
* ^version = "1.0.0"
* ^experimental = false
* #1 "癌症治療後disease-free且沒有復發"
* #2 "癌症治療後從未disease-free過"
* #3 "癌症局部或區域性復發"
* #4 "癌症遠端轉移"

ValueSet: CancerStageStatus
Id: nhi-cancerstage-status
Title: "NHI-健保重大傷病-癌症狀態"
Description: "NHI-健保重大傷病-癌症狀態"
* ^date = "2025-06-11"
* ^version = "1.0.0"
* ^experimental = false
* include codes from system CancerStageStatusCodes