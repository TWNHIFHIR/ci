CodeSystem: CancerStageCodes
Id: cancer-stage
Title: "NHI-健保重大傷病-癌症期別"
Description: "臺灣衛生福利部中央健康保險署「癌症期別」代碼，代碼出版日期：2025-11-07；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* #1 "第一期"
* #2 "第二期"
* #3 "第三期"
* #4 "第四期"
* #9 "不適用"


ValueSet: CancerStage
Id: cancer-stage
Title: "NHI-健保重大傷病-癌症期別值集"
Description: "NHI-健保重大傷病-癌症期別值集"
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* include codes from system CancerStageCodes