CodeSystem: CancerTreatmentCodes
Id: nhi-cancer-treatment
Title: "NHI-健保重大傷病-後續治療評估"
Description: "臺灣衛生福利部中央健康保險署「後續治療評估」代碼，代碼出版日期：2025-11-07；資料所屬單位：臺灣衛生福利部中央健康保險署。  
參照自[重大傷病專區](https://www.nhi.gov.tw/ch/np-2957-1.html)中申請須知及文件下載的[惡性腫瘤重大傷病證明換發評估表(自105年1月1日適用)(104.12.22更新)](https://www.nhi.gov.tw/ch/dl-30060-83fc8c0cada24dae8f3c5d5a98201aee-1.odt)"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* #1 "需定期返診追蹤檢查"
* #2 "癌症從未disease-free須持續治療"
* #3 "癌症根治性治療後的輔助性治療(包括乳癌荷爾蒙治療)"
* #4 "癌症復發治療"
* #5 "癌症後遺症及併發症治療"

ValueSet: CancerTreatment
Id: nhi-cancer-treatment
Title: "NHI-健保重大傷病-後續治療評估值集"
Description: "NHI-健保重大傷病-後續治療評估值集"
* ^date = "2025-11-07"
* ^version = "1.0.2"
* ^experimental = false
* include codes from system CancerTreatmentCodes