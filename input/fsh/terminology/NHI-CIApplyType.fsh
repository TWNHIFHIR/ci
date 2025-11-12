CodeSystem: NHICIApplyTypeCodes
Id: nhi-apply-type
Title: "NHI-健保重大傷病-申報類別"
Description: "臺灣衛生福利部中央健康保險署「申報類別」代碼，代碼出版日期：2025-11-07；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* #1 "送核"
* #3 "申復"
* #4 "爭議"
* #5 "訴願"
* #6 "行政訴訟"
//* #2 "院所代辦"

ValueSet: NHICIApplyType
Id: nhi-apply-type
Title: "NHI-健保重大傷病-申報類別值集"
Description: "NHI-健保重大傷病-申報類別值集"
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* include codes from system NHICIApplyTypeCodes