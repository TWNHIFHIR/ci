CodeSystem: NHICIApplyModeCodes
Id: nhi-apply-mode
Title: "NHI-健保重大傷病-申報方式"
Description: "臺灣衛生福利部中央健康保險署「申報方式」代碼，代碼出版日期：2025-11-07；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-11-07"
* ^version = "1.0.1"
* ^experimental = false
* #1 "個人"
* #2 "院所代辦"
* #3 "試辦計劃(個人)"
* #4 "試辦計畫(院所)"

ValueSet: NHICIApplyMode
Id: nhi-apply-mode
Title: "NHI-健保重大傷病-申報方式值集"
Description: "NHI-健保重大傷病-申報方式值集"
* ^date = "2025-11-07"
* ^version = "1.0.1"
* ^experimental = false
* include codes from system NHICIApplyModeCodes