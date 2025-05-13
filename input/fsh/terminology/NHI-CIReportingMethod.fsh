CodeSystem: NHICIReportingMethodCodes
Id: nhi-reporting-method
Title: "NHI-健保重大傷病-申報類別類別"
Description: "臺灣衛生福利部中央健康保險署「申報類別類別」代碼，代碼出版日期：2024-09-20；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2024-09-20"
* ^version = "1.0.1"
* ^experimental = false
* #1 "送核"
//* #2 "院所代辦"
* #3 "申復"
* #4 "爭議"
* #5 "訴願"
* #6 "行政訴訟"

ValueSet: NHICIReportingMethod
Id: nhi-reporting-method
Title: "NHI-健保重大傷病-申報類別類別值集"
Description: "NHI-健保重大傷病-申報類別類別值集"
* ^date = "2024-09-20"
* ^version = "1.0.1"
* ^experimental = false
* include codes from system NHICIReportingMethodCodes