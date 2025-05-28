Mapping: TWCIQuestionnaireResponse
Id: TWCIQuestionnaireResponse
Title: "Mapping to TWCI QuestionnaireResponse"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ci/StructureDefinition/QuestionnaireResponse-twci"
* hosp -> "(院所資訊)"
* hosp.applMode -> "item.where(linkId = '1').item.where(linkId = '1.1').answer.valueCoding.code (申報方式)"
* hosp.applType -> "item.where(linkId = '1').item.where(linkId = '1.2').answer.valueCoding.code (申報類別)"
* hosp.applDate -> "item.where(linkId = '1').item.where(linkId = '1.3').answer.valueDate (申請日期)"
* hosp.medCertBookDate -> "item.where(linkId = '1').item.where(linkId = '1.4').answer.valueDate (開立診斷書申請日期)"
* hosp.hospId -> "item.where(linkId = '1').item.where(linkId = '1.5').answer.valueCoding.code (醫事機構代碼)"
* hosp.acptNo -> "item.where(linkId = '1').item.where(linkId = '1.6').answer.valueString (受理編號)"
* hosp.acptNum -> "item.where(linkId = '1').item.where(linkId = '1.7').answer.valueInteger (受理次數)"

* patient -> "item.where(linkId = '2').answer.valueReference(PatientTWCI) (病人資訊)"

* doctor -> "(醫師資訊)"
* doctor.diagPrsnId -> "item.where(linkId = '3').item.where(linkId = '3.1').answer.valueString (醫師身分證號)"
* doctor.diagPrsnName -> "item.where(linkId = '3').item.where(linkId = '3.2').answer.valueString (診斷醫師姓名)"

* diagnosis -> "(疾病資訊)"
* diagnosis.icd10cmCode -> "item.where(linkId = '4').item.where(linkId = '4.1').answer.valueCoding.code (主診斷代碼)"

* diagnosis.examinationReport -> "(檢查報告)" 
* diagnosis.examinationReport.reportType -> "item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.1').answer.valueCoding.code (報告類型)" 
* diagnosis.examinationReport.speType -> "item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.2').answer.valueString (檢體種類)" 
* diagnosis.examinationReport.reportResultString -> "item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.3').answer.valueString (檢查報告結果（文數字）)" 
* diagnosis.examinationReport.reportResultPdf -> "item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.4').answer.valueString (檢查報告結果（檔案路徑）)" 
* diagnosis.examinationReport.reportResultPdfTitle -> "item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.5').answer.valueString (檢查報告名稱)" 
* diagnosis.examinationReport.reportDate -> "item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.6').answer.valueDate (報告日期)" 

* diagnosis.medrec -> "(病歷資料)" 
* diagnosis.medrec.medrec -> "item.where(linkId = '4').item.where(linkId = '4.3').item.where(linkId = '4.3.1').answer.valueString (病歷資料)" 
* diagnosis.medrec.medrecTitle -> "item.where(linkId = '4').item.where(linkId = '4.3').item.where(linkId = '4.3.2').answer.valueString (病歷資料名稱)" 


* diagnosis.imageStudy -> "(影像報告)" 
* diagnosis.imageStudy.imgItem -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.1').answer.valueString (影像報告)" 
* diagnosis.imageStudy.imgResult -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.2').answer.valueString (影像報告結果)" 
* diagnosis.imageStudy.imgDate -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.3').answer.valueString (影像報告日期)" 
* diagnosis.imageStudy.imgBodySite -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.4').answer.valueString (影像檢查的身體部位)" 
* diagnosis.imageStudy.imgDicom -> "(DICOM影像)" 
* diagnosis.imageStudy.imgDicom.studyUid -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.1').answer.valueString (整項影像檢查的識別碼)" 
* diagnosis.imageStudy.imgDicom.series -> "(每項影像檢查有一個或多個系列(series)的實例)" 
* diagnosis.imageStudy.imgDicom.series.uid -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2').item.where(linkId = '4.4.5.2.1').answer.valueString (此系列的DICOM系列實例UID)" 
* diagnosis.imageStudy.imgDicom.series.modality -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2').item.where(linkId = '4.4.5.2.2').answer.valueCoding.code (此系列實例所使用的成像儀器)" 
* diagnosis.imageStudy.imgDicom.series.instance -> "(系列中的一個SOP實例)" 
* diagnosis.imageStudy.imgDicom.series.instance.uid -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2')item.where(linkId = '4.4.5.2.3').item.where(linkId = '4.4.5.2.3.1').answer.valueString (DICOM影像)" 
* diagnosis.imageStudy.imgDicom.series.instance.sopClass -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2')item.where(linkId = '4.4.5.2.3').item.where(linkId = '4.4.5.2.3.2').answer.valueCoding.code (DICOM class 類型)" 
* diagnosis.imageStudy.imgNonDicom -> "(非DICOM影像)" 
* diagnosis.imageStudy.imgNonDicom.imgNonDicom -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.6').item.where(linkId = '4.4.6.1').answer.valueString (非DICOM影像)" 
* diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType -> "item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.6').item.where(linkId = '4.4.6.2').answer.valueCoding.code (非DICOM影像MimeType)" 

* ci -> "item.where(linkId = '5').answer.valueReference(ConditionTWCI) (重大傷病)"

* cancerStage -> "(癌症期別)" 
* cancerStage.cancerStage -> "item.where(linkId = '6').item.where(linkId = '6.1').answer.valueCoding.code (癌症期別)" 
* cancerStage.assessScore -> "item.where(linkId = '6').item.where(linkId = '6.2').answer.valueString (癌症分期分數或結果)" 
* cancerStage.assessDate -> "item.where(linkId = '6').item.where(linkId = '6.3').answer.valueDate (癌症分期量表評估日期)" 

* illness -> "(惡性腫瘤重大傷病換發評估表)" 
* illness.code -> "item.where(linkId = '7').item.where(linkId = '7.1').answer.valueCoding.code (原發癌症診斷碼)" 
* illness.date -> "item.where(linkId = '7').item.where(linkId = '7.2').answer.valueDate (癌症最初診斷日期)" 
* illness.oriCancerAjcc -> "item.where(linkId = '7').item.where(linkId = '7.3').answer.valueCoding.code (癌症最初診斷AJCC分期)" 
* illness.oriCancerAjcc1 -> "item.where(linkId = '7').item.where(linkId = '7.4').answer.valueString (癌症最初診斷AJCC分期_補充說明欄位)" 
* illness.cancerStatus -> "item.where(linkId = '7').item.where(linkId = '7.5').answer.valueCoding.code (目前癌症狀態)" 
* illness.cancerTreatment -> "item.where(linkId = '7').item.where(linkId = '7.6').answer.valueCoding.code (後續治療評估)" 
* illness.cancerTreatmentPlan -> "item.where(linkId = '7').item.where(linkId = '7.7').answer.valueCoding.code (後續治療計畫)" 
* illness.cancerTreatmentText -> "item.where(linkId = '7').item.where(linkId = '7.8').answer.valueString (補充說明)" 

Mapping: TWCIPatient
Id: TWCIPatient
Title: "Mapping to TWCI Patient"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ci/StructureDefinition/Patient-twci"
* patient -> "(病人資訊)"
* patient.idCard -> "identifier.where(type.coding.code = 'NNxxx').value (身分證字號)"
* patient.medicalRecord -> "identifier.where(type.coding.code = 'MR').value (病歷號)"
* patient.name -> "name.where(use = 'usual').text (姓名)"
* patient.sex -> "gender (病人性別)"
* patient.birthday -> "birthDate (出生日期)"
* patient.zipCode -> "address.postalCode.extension.valueCodeableConcept.coding.code (郵遞區號)"
* patient.contactAddr -> "address.text (連絡住址)"
* patient.mobile -> "telecom.where(system = 'sms').value (手機號碼)"
* patient.contactTel -> "telecom.where(system = 'phone').value (連絡電話)"
* patient.email -> "telecom.where(system = 'email').value (電子郵件信箱)"

Mapping: TWCICondition
Id: TWCICondition
Title: "Mapping to TWCI Condition"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ci/StructureDefinition/Condition-twci"
* ci.hvType -> "category.coding.code (重大傷病類別)" 