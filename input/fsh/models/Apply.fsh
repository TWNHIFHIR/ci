Logical: ApplyModel
Id: ApplyModel
Title: "申請(Apply)重大傷病申請書之資料模型"
Description: """
申請(Apply)重大傷病之資料模型，此邏輯模型為定義重大傷病情境下使用的所有資料欄位。
為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」
瞭解各資料欄位實際使用TWCI IG的哪個Profiles的哪個資料項目（element）。亦可配合
[視覺化邏輯模型圖]進行欄位對應。
"""
* ^version = "0.1.0"

// 院所資訊
* hosp 1..1 BackboneElement "院所資訊" "院所資訊"
* hosp.applType 1..1 CodeableConcept "申報方式" "申報方式"
* hosp.applDate 1..1 dateTime "申請日期" "申請日期"
* hosp.diagRepApplyDate 1..1 dateTime "開立診斷書申請日期" "開立診斷書申請日期"
* hosp.hospId 1..1 string "醫事機構代碼" "醫事機構代碼，必須存在於醫事機構基本資料檔內"
* hosp.acptNo 1..1 string "受理編號" "受理編號"
* hosp.acptNum 1..1 integer "受理次數" "受理次數"

// 病人資訊
* patient 1..1 BackboneElement "病人資訊" "病人資訊"
* patient.idCard 1..1 string "身分證字號" "身分證字號"
* patient.name 1..1 string "姓名" "姓名"
* patient.gender 1..1 code "病人性別" "病人性別"
* patient.birthday 1..1 date "出生日期" "出生日期"
* patient.postCode 1..1 CodeableConcept "郵遞區號" "郵遞區號"
* patient.address 1..1 string "連絡住址" "連絡住址"
* patient.mobilePhone 1..1 string "手機號碼" "手機號碼"
* patient.phone 1..1 string "連絡電話" "連絡電話"
* patient.email 0..1 string "電子郵件信箱" "電子郵件信箱"

// 醫師資訊
* doctor 1..1 BackboneElement "醫師資訊" "醫師資訊"
* doctor.drIdCard 1..1 string "醫師身分證字號" "醫師身分證字號"
* doctor.drName 1..1 string "診斷醫師姓名" "診斷醫師姓名"

// 疾病資訊
* diagnosis 1..1 BackboneElement "疾病資訊" "疾病資訊"
* diagnosis.diagCode 1..1 code "主診斷代碼" "主診斷代碼"
//* diagnosis.diagName 1..1 string "主診斷病名" "主診斷病名"
* diagnosis.examinationReport 0..1 BackboneElement "檢查報告" "檢查報告"
* diagnosis.examinationReport.reportType 0..1 CodeableConcept "報告類型" "報告類型"
* diagnosis.examinationReport.speType 0..1 string "檢體種類" "檢體種類"
* diagnosis.examinationReport.reportResultString 0..* string "檢查報告結果（文數字）" "檢查報告結果-文數字與base64Binary應擇一填寫"
* diagnosis.examinationReport.reportResultPdf 0..* base64Binary "檢查報告結果（檔案路徑）" "檢查報告結果-文數字與base64Binary應擇一填寫"
* diagnosis.examinationReport.reportResultPdfTitle 0..* string "檢查報告名稱" "檢查報告名稱"
* diagnosis.examinationReport.reportDate 0..1 dateTime "報告日期" "報告日期"


// 重大傷病
* ci 1..1 BackboneElement "重大傷病" "重大傷病"
* ci.illnessType 1..1 CodeableConcept "重大傷病類別" "重大傷病類別"

// 癌症期別
* cancerStage 1..1 BackboneElement "癌症期別" "癌症期別"
* cancerStage.cancerStage 1..1 CodeableConcept "癌症期別" "癌症期別"
* cancerStage.assessScore 0..* string "癌症分期分數或結果" "癌症分期分數或結果"
* cancerStage.earlyStage 0..1 string "初期癌症期別" "初期癌症期別"
* cancerStage.actualStage 0..1 string "實際癌症期別" "實際癌症期別"
* cancerStage.assessDate 0..* date "癌症分期量表評估日期" "癌症分期量表評估日期"


// 惡性腫瘤重大傷病換發評估表
* illness 1..1 BackboneElement "惡性腫瘤重大傷病換發評估表" "惡性腫瘤重大傷病換發評估表"
* illness.code 0..1 CodeableConcept "原發癌症診斷碼" "原發癌症診斷碼"
* illness.date 0..1 date "癌症最初診斷日期" "癌症最初診斷日期"
* illness.ajccStage 0..1 string "癌症最初診斷AJCC分期" "癌症最初診斷AJCC分期"
* illness.ajccStageNotes 0..1 string "癌症最初診斷AJCC分期_補充說明欄位" "癌症最初診斷AJCC分期_補充說明欄位"
* illness.cancerStatus 1..1 CodeableConcept "目前癌症狀態" "目前癌症狀態"
* illness.assessment 1..* CodeableConcept "後續治療評估" "後續治療評估"