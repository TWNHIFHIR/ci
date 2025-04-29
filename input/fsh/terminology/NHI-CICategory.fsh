/*CodeSystem: CICategory 
Id: ci-category
Title: "NHI-健保重大傷病-重大傷病補充說明"
Description: "臺灣衛生福利部中央健康保險署「重大傷病類別」代碼，代碼出版日期：2024-09-20；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2024-09-20"
* ^version = "1.0.0"
* ^experimental = false
* #citype "重大傷病"

ValueSet: CICategory 
Id: ci-category
Title: "NHI-健保重大傷病-重大傷病補充說明值集"
Description: "NHI-健保重大傷病-重大傷病類別值集"
* ^date = "2024-09-20"
* ^version = "1.0.0"
* ^experimental = false
* include codes from system CICategory 
*/


CodeSystem: NHICICategoryCodes
Id: nhi-category
Title: "NHI-健保重大傷病-重大傷病類別"
Description: "臺灣衛生福利部中央健康保險署「重大傷病類別」代碼，代碼出版日期：2024-09-20；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2024-09-20"
* ^version = "1.0.0"
* ^experimental = false
* #1 "癌症"
* #2 "先天性凝血因子異常"
* #3 "嚴重溶血性及再生不良性貧血"
* #4 "慢性腎衰竭"
* #5 "需終身治療之全身性自體免疫症候群"
* #6 "慢性精神病"
* #7 "先天性新陳代謝異常疾病"
* #8 "先天性畸形及染色體異常"
* #9 "燒燙傷面積達全身百分之二十以上；或顏面燒燙傷合併五官功能障礙者"
* #10 "接受腎臟、心臟、肺臟、肝臟及骨髓移植後之追蹤治療"
* #11 "小兒麻痺、腦性麻痺所引起之神經、肌肉、骨骼、肺臟等之併發症者"
* #12 "重大創傷嚴重程度十六分以上者"
* #13 "呼吸衰竭需長期使用呼吸器"
* #14 "腸道大量切除或失去功能給予全靜脈營養"
* #15 "因潛水、或減壓不當引起之嚴重型減壓病或空氣栓塞症，伴有呼吸、循環或神經系統之併發症且需長期治療者"
* #16 "重症肌無力症"
* #17 "先天性免疫不全症"
* #18 "脊髓損傷或病變所引起之神經、肌肉、皮膚、骨骼、心肺、泌尿及腸胃等之併發症者"
* #19 "職業病"
* #20 "急性腦血管疾病"
* #21 "多發性硬化症"
* #22 "先天性肌肉萎縮症"
* #23 "外皮之先天畸形"
* #24 "漢生病"
* #25 "肝硬化症併腹水無法控制或食道或胃靜脈出血或肝昏迷"
* #26 "早產兒所引起併發症"
* #27 "烏腳病"
* #28 "後天免疫缺乏症候群"
* #29 "運動神經元疾病"
* #30 "庫賈氏病"
* #31 "罕見疾病"
* #99 "其他"


ValueSet: NHICICategory
Id: nhi-category
Title: "NHI-健保重大傷病-重大傷病類別值集"
Description: "NHI-健保重大傷病-重大傷病類別值集"
* ^date = "2024-09-20"
* ^version = "1.0.0"
* ^experimental = false
* include codes from system NHICICategoryCodes
* include codes from system http://terminology.hl7.org/CodeSystem/condition-category|1.0.1