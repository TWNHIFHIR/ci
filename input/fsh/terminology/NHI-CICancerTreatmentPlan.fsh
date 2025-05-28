CodeSystem: CancerTreatmentPlanCodes
Id: nhi-cancer-treatment-plan
Title: "NHI-健保重大傷病-後續治療計劃"
Description: "臺灣衛生福利部中央健康保險署「後續治療計劃」代碼，代碼出版日期：2025-04-30；資料所屬單位：臺灣衛生福利部中央健康保險署。  
參照自[重大傷病專區](https://www.nhi.gov.tw/ch/np-2957-1.html)中申請須知及文件下載的[惡性腫瘤重大傷病證明換發評估表(自105年1月1日適用)(104.12.22更新)](https://www.nhi.gov.tw/ch/dl-30060-83fc8c0cada24dae8f3c5d5a98201aee-1.odt)"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-04-30"
* ^version = "1.0.0"
* ^experimental = false
* #1 "手術治療"
* #2 "放射線治療"
* #3 "化學治療"
* #4 "標靶治療"
* #5 "荷爾蒙治療"
* #6 "緩和治療"
* #7 "其他"

ValueSet: CancerTreatmentPlan
Id: nhi-cancer-treatment-plan
Title: "NHI-健保重大傷病-後續治療計劃值集"
Description: "NHI-健保重大傷病-後續治療計劃值集"
* ^date = "2025-04-30"
* ^version = "1.0.0"
* ^experimental = false
* include codes from system CancerTreatmentPlanCodes