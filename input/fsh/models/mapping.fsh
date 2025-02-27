Mapping: TWCIQuestionnaireResponse
Id: TWCIQuestionnaireResponse
Title: "Mapping to TWCI QuestionnaireResponse"
Source: ApplyModel
Target: "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/QuestionnaireResponse-twci"
* hosp -> "(院所資訊)"
* hosp.applType -> "item.where(linkId = '1').item.where(linkId = '1.1').answer.valueCoding.code (申報方式)"
* hosp.applDate -> "item.where(linkId = '1').item.where(linkId = '1.2').answer.valueDate (申請日期)"
* hosp.diagRepApplyDate -> "item.where(linkId = '1').item.where(linkId = '1.3').answer.valueDate (開立診斷書申請日期)"
* hosp.hospId -> "item.where(linkId = '1').item.where(linkId = '1.4').answer.valueCoding (醫事機構代碼)"
* hosp.acptNo -> "item.where(linkId = '1').item.where(linkId = '1.5').answer.valueString (受理編號)"
* hosp.acptNum -> "item.where(linkId = '1').item.where(linkId = '1.6').answer.valueInteger (受理次數)"

* patient -> "item.where(linkId = '2').answer.valueReference(PractitionerTWPAS) (病人資訊)"

* doctor -> "(醫師資訊)"
* doctor.drIdCard -> "item.where(linkId = '3').item.where(linkId = '3.1').answer.valueString (醫師身分證號)"
* doctor.drName -> "item.where(linkId = '3').item.where(linkId = '3.2').answer.valueString (診斷醫師姓名)"

* diagnosis -> "(疾病資訊)"
* diagnosis.diagCode -> "item.where(linkId = '4').item.where(linkId = '4.1').answer.valueCoding.code (主診斷代碼)"
//* diagnosis.diagName -> "item.where(linkId = '4').item.where(linkId = '4.2').answer.valueString (主診斷病名)"

* diagnosis.examinationReport -> "(檢查報告)" 
* diagnosis.examinationReport.reportType -> "item.where(linkId = '4').item.where(linkId = '4.3').item.answer.valueCoding.code (報告類型)" 
* diagnosis.examinationReport.speType -> "item.where(linkId = '4').item.where(linkId = '4.4').item.answer.valueString (檢體種類)" 
* diagnosis.examinationReport.reportResultString -> "item.where(linkId = '4').item.where(linkId = '4.5').item.answer.valueString (檢查報告結果（文數字）)" 
* diagnosis.examinationReport.reportResultPdf -> "item.where(linkId = '4').item.where(linkId = '4.6').item.answer.valueAttachment (檢查報告結果（檔案路徑）)" 
* diagnosis.examinationReport.reportResultPdfTitle -> "item.where(linkId = '4').item.where(linkId = '4.7').item.answer.valueString (檢查報告名稱)" 
* diagnosis.examinationReport.reportDate -> "item.where(linkId = '4').item.where(linkId = '4.84').item.answer.valueDate (報告日期)" 

* ci -> "item.where(linkId = '5').answer.valueReference(ConditionTWCI) (重大傷病)"

* cancerStage -> "(癌症期別)" 
* cancerStage.cancerStage -> "item.where(linkId = '6').item.where(linkId = '6.4').answer.valueCoding (癌症期別)" 
* cancerStage.assessScore -> "item.where(linkId = '6').item.where(linkId = '6.4').answer.valueString (癌症分期分數或結果)" 
* cancerStage.earlyStage -> "item.where(linkId = '6').item.where(linkId = '6.4').answer.valueString (初期癌症期別)" 
* cancerStage.actualStage -> "item.where(linkId = '6').item.where(linkId = '6.4').answer.valueString (實際癌症期別)" 
* cancerStage.assessDate -> "item.where(linkId = '6').item.where(linkId = '6.4').answer.valueDate (癌症分期量表評估日期)" 


* illness -> "(惡性腫瘤重大傷病換發評估表)" 
* illness.code -> "item.where(linkId = '7').item.where(linkId = '7.1').answer.valueCoding.code (原發癌症診斷碼)" 
* illness.date -> "item.where(linkId = '7').item.where(linkId = '7.2').answer.valueDate (癌症最初診斷日期)" 
* illness.ajccStage -> "item.where(linkId = '7').item.where(linkId = '7.3').answer.valueCoding.code (癌症最初診斷AJCC分期)" 
* illness.ajccStageNotes -> "item.where(linkId = '7').item.where(linkId = '7.4').answer.valueString (癌症最初診斷AJCC分期_補充說明欄位)" 
* illness.cancerStatus -> "item.where(linkId = '7').item.where(linkId = '7.5').answer.valueCoding.code (目前癌症狀態)" 
* illness.assessment -> "item.where(linkId = '7').item.where(linkId = '7.6').answer.valueCoding.code (後續治療評估)" 


Mapping: TWCIPatient
Id: TWCIPatient
Title: "Mapping to TWCI Patient"
Source: ApplyModel
Target: "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Patient-twci"
* patient -> "(病人資訊)"
* patient.idCard -> "identifier.where(type.coding.code = 'NNxxx').value (身分證字號)"
* patient.name -> "name.where(use = 'usual').text (姓名)"
* patient.gender -> "gender (病人性別)"
* patient.birthday -> "birthDate (出生日期)"
* patient.postCode -> "address.postalCode.extension.valueCodeableConcept.coding.code (郵遞區號)"
* patient.address -> "address.text (連絡住址)"
* patient.mobilePhone -> "telecom.where(system = 'sms').value (手機號碼)"
* patient.phone -> "telecom.where(system = 'phone').value (連絡電話)"
* patient.email -> "telecom.where(system = 'email').value (電子郵件信箱)"


Mapping: TWCICondition
Id: TWCICondition
Title: "Mapping to TWCI Condition"
Source: ApplyModel
Target: "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Condition-twci"
* ci.illnessType -> "category.coding.code (重大傷病類別)" 