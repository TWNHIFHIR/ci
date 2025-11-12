CodeSystem: CancerStagingCodes
Id: nhi-cancerstaging
Title: "NHI-健保重大傷病-癌症最初診斷AJCC分期"
Description: "臺灣衛生福利部中央健康保險署「癌症最初診斷AJCC分期」代碼，代碼出版日期：2025-11-07；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* #1 "第一期"
* #2 "第二期"
* #3 "第三期"
* #4 "第四期"
* #9 "其他系統"

ValueSet: CancerStaging
Id: nhi-cancerstaging
Title: "NHI-健保重大傷病-癌症最初診斷AJCC分期值集"
Description: "NHI-健保重大傷病-癌症最初診斷AJCC分期值集"
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* include codes from system CancerStagingCodes