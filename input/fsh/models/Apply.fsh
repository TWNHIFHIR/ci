Logical: ApplyModel
Id: ApplyModel
Title: "申請(Apply)重大傷病申請書之資料模型"
Description: """
申請(Apply)重大傷病之資料模型，此邏輯模型為定義重大傷病情境下使用的所有資料欄位。
為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」
瞭解各資料欄位實際使用TWCI IG的哪個Profiles的哪個資料項目（element）。亦可配合
[視覺化邏輯模型圖]進行欄位對應。
"""
* ^version = "1.0.2"

// 院所資訊
* hosp 1..1 BackboneElement "院所資訊" "院所資訊"
* hosp.applMode 1..1 CodeableConcept "申報方式" "申報方式"
* hosp.applType 1..1 CodeableConcept "申報類別" "申報類別"
* hosp.applDate 1..1 dateTime "申請日期" "申請日期"
* hosp.medCertBookDate 1..1 dateTime "開立診斷書申請日期" "開立診斷書申請日期"
* hosp.hospId 1..1 string "醫事機構代碼" "醫事機構代碼，必須存在於醫事機構基本資料檔內"
* hosp.acptNo 1..1 string "受理編號" "受理編號"
* hosp.acptNum 1..1 integer "受理次數" "受理次數"

// 病人資訊
* patient 1..1 BackboneElement "病人資訊" "病人資訊"
* patient.idCard 1..1 string "身分證號" "身分證號"
* patient.patID 0..1 string "病歷號" "病歷號"
* patient.name 1..1 string "姓名" "姓名"
* patient.gender 1..1 code "病人性別" "病人性別"
* patient.birthday 1..1 date "出生日期" "出生日期"
* patient.zipCode 1..1 CodeableConcept "郵遞區號" "郵遞區號"
* patient.contactAddr 1..1 string "連絡住址" "連絡住址"
* patient.mobile 0..1 string "手機號碼" "手機號碼。應為數字10碼(寄送核發簡訊使用)。手機號碼與聯絡電話應至少填寫一欄。"
* patient.contactTel 0..1 string "連絡電話" "連絡電話。長度不得超過15字。手機號碼與聯絡電話應至少填寫一欄。"
* patient.email 0..1 string "電子郵件信箱" "電子郵件信箱"

// 醫師資訊
* doctor 1..1 BackboneElement "醫師資訊" "醫師資訊"
* doctor.diagPrsnId 0..1 string "醫師身分證號" "醫師身分證號"
* doctor.diagPrsnName 1..1 string "診斷醫師姓名" "診斷醫師姓名"

// 疾病資訊
* diagnosis 1..1 BackboneElement "疾病資訊" "疾病資訊"
* diagnosis.icd10cmCode 1..1 code "主診斷代碼" "主診斷代碼"
//* diagnosis.diagName 1..1 string "主診斷病名" "主診斷病名"
* diagnosis.examinationReport 0..* BackboneElement "檢查報告" "檢查報告"
* diagnosis.examinationReport.reportType 0..1 code "報告類型" "報告類型。當LOINC無法具體描述檢體種類（例如：`47526-9`時），請填寫及補充說明檢體種類。"
* diagnosis.examinationReport.speType 0..1 string "檢體種類" "檢體種類"
* diagnosis.examinationReport.reportResultString 0..1 string "檢查報告結果（文數字）" "檢查報告結果-文數字與base64Binary應擇一填寫"
* diagnosis.examinationReport.reportResultPdf 0..1 string "檢查報告結果（檔案路徑）" "檢查報告結果-文數字與base64Binary應擇一填寫"
* diagnosis.examinationReport.reportResultPdfTitle 0..1 string "檢查報告名稱" "檢查報告名稱"
* diagnosis.examinationReport.reportDate 0..1 dateTime "報告日期" "報告日期"
* diagnosis.medrec 0..* BackboneElement "病歷資料" "病歷資料（非屬影像報告檢查驗報告部分）"
* diagnosis.medrec.medrec 1..1 string "病歷資料（請填寫完整檔案路徑）" "病歷資料（請填寫完整檔案路徑）"
* diagnosis.medrec.medrecTitle 0..1 string "病歷資料名稱" "病歷資料名稱"
* diagnosis.imageStudy 0..* BackboneElement "影像報告" "影像報告"
* diagnosis.imageStudy.imgItem 1..1 code "影像報告" "影像報告"
* diagnosis.imageStudy.imgResult 1..1 string "影像報告結果" "影像報告結果"
* diagnosis.imageStudy.imgDate 1..1 dateTime "影像報告日期" "影像報告日期"
* diagnosis.imageStudy.imgBodySite 1..1 code "影像檢查的身體部位" "影像檢查的身體部位"
* diagnosis.imageStudy.imgDicom 0..* BackboneElement "DICOM影像" "DICOM影像"
* diagnosis.imageStudy.imgDicom.studyUid 1..1 string "整項影像檢查的識別碼" "D整項影像檢查的識別碼"
* diagnosis.imageStudy.imgDicom.series 1..* BackboneElement "每項影像檢查有一個或多個系列(series)的實例" "每項影像檢查有一個或多個系列(series)的實例"
* diagnosis.imageStudy.imgDicom.series.uid 1..1 string "此系列的DICOM系列實例UID" "此系列的DICOM系列實例UID"
* diagnosis.imageStudy.imgDicom.series.modality 1..1 code "此系列實例所使用的成像儀器" "此系列實例所使用的成像儀器"
* diagnosis.imageStudy.imgDicom.series.instance 1..* BackboneElement "系列中的一個SOP實例" "系列中的一個SOP實例"
* diagnosis.imageStudy.imgDicom.series.instance.uid 1..1 string "DICOM影像" "DICOM影像"
* diagnosis.imageStudy.imgDicom.series.instance.sopClass 1..1 code "DICOM class 類型" "DICOM class 類型"
* diagnosis.imageStudy.imgNonDicom 0..* BackboneElement "非DICOM影像" "非DICOM影像"
* diagnosis.imageStudy.imgNonDicom.imgNonDicom 1..1 string "非DICOM影像（請填寫完整檔案路徑）" "非DICOM影像（請填寫完整檔案路徑）"
* diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType 1..1 code "非DICOM影像MimeType" "非DICOM影像MimeType"


// 重大傷病
* ci 1..1 BackboneElement "重大傷病" "重大傷病"
* ci.hvType 1..1 CodeableConcept "重大傷病類別" "重大傷病類別"

// 癌症期別
* cancerStage 1..1 BackboneElement "癌症期別" "癌症期別"
* cancerStage.cancerStage 1..1 code "癌症期別" "癌症期別"
* cancerStage.assessScore 0..1 string "癌症分期分數或結果" "癌症分期分數或結果"
/* cancerStage.earlyStage 0..1 string "初期癌症期別" "初期癌症期別"
* cancerStage.actualStage 0..1 string "實際癌症期別" "實際癌症期別"*/
* cancerStage.assessDate 0..1 date "癌症分期量表評估日期" "癌症分期量表評估日期"

// 惡性腫瘤重大傷病換發評估表
* illness 0..1 BackboneElement "惡性腫瘤重大傷病換發評估表" "惡性腫瘤重大傷病換發評估表"
* illness.code 0..1 code "原發癌症診斷碼" "原發癌症診斷碼"
* illness.date 0..1 date "癌症最初診斷日期" "癌症最初診斷日期"
* illness.oriCancerAjcc 0..1 code "癌症最初診斷AJCC分期" "癌症最初診斷AJCC分期"
* illness.oriCancerAjcc1 0..1 string "癌症最初診斷AJCC分期_補充說明欄位" "癌症最初診斷AJCC分期_補充說明欄位"
* illness.cancerStatus 0..1 code "目前癌症狀態" "目前癌症狀態"
* illness.cancerTreatment 0..* code "後續治療評估" "後續治療評估"
* illness.cancerTreatmentPlan 0..* code "後續治療計畫" "後續治療計畫"
* illness.cancerTreatmentText 0..1 string "補充說明" "補充欄位供申請院所自行補充說明"