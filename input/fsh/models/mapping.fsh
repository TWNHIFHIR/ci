Mapping: TWCIQuestionnaireResponse
Id: TWCIQuestionnaireResponse
Title: "Mapping to TWCI QuestionnaireResponse"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ci/StructureDefinition/QuestionnaireResponse-twci"
* hosp.applMode -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.1').answer.valueCoding.code"
* hosp.applType -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.2').answer.valueCoding.code"
* hosp.applDate -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.3').answer.valueDate"
* hosp.medCertBookDate -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.4').answer.valueDate"
* hosp.hospId -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.5').answer.valueCoding.code"
* hosp.acptNo -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.6').answer.valueString"
* hosp.acptNum -> "QuestionnaireResponse.item.where(linkId = '1').item.where(linkId = '1.7').answer.valueInteger"

* patient -> "QuestionnaireResponse.item.where(linkId = '2').answer.valueReference"

* doctor.diagPrsnId -> "QuestionnaireResponse.item.where(linkId = '3').item.where(linkId = '3.1').answer.valueString"
* doctor.diagPrsnName -> "QuestionnaireResponse.item.where(linkId = '3').item.where(linkId = '3.2').answer.valueString"

* diagnosis.icd10cmCode -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.1').answer.valueCoding.code"

* diagnosis.examinationReport.reportType -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.1').answer.valueCoding.code" 
* diagnosis.examinationReport.speType -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.2').answer.valueString" 
* diagnosis.examinationReport.reportResultString -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.3').answer.valueString" 
* diagnosis.examinationReport.reportResultPdf -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.4').answer.valueString" 
* diagnosis.examinationReport.reportResultPdfTitle -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.5').answer.valueString" 
* diagnosis.examinationReport.reportDate -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.2').item.where(linkId = '4.2.6').answer.valueDate" 

* diagnosis.medrec.medrec -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.3').item.where(linkId = '4.3.1').answer.valueString" 
* diagnosis.medrec.medrecTitle -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.3').item.where(linkId = '4.3.2').answer.valueString" 

* diagnosis.imageStudy.imgItem -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.1').answer.valueCoding.code" 
* diagnosis.imageStudy.imgResult -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.2').answer.valueString" 
* diagnosis.imageStudy.imgDate -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.3').answer.valueDate" 
* diagnosis.imageStudy.imgBodySite -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.4').answer.valueCoding.code" 
* diagnosis.imageStudy.imgDicom.studyUid -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.1').answer.valueString" 
* diagnosis.imageStudy.imgDicom.series.uid -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2').item.where(linkId = '4.4.5.2.1').answer.valueString" 
* diagnosis.imageStudy.imgDicom.series.modality -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2').item.where(linkId = '4.4.5.2.2').answer.valueCoding.code" 
* diagnosis.imageStudy.imgDicom.series.instance.uid -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2').item.where(linkId = '4.4.5.2.3').item.where(linkId = '4.4.5.2.3.1').answer.valueString" 
* diagnosis.imageStudy.imgDicom.series.instance.sopClass -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.5').item.where(linkId = '4.4.5.2').item.where(linkId = '4.4.5.2.3').item.where(linkId = '4.4.5.2.3.2').answer.valueCoding.code" 
* diagnosis.imageStudy.imgNonDicom.imgNonDicom -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.6').item.where(linkId = '4.4.6.1').answer.valueString" 
* diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType -> "QuestionnaireResponse.item.where(linkId = '4').item.where(linkId = '4.4').item.where(linkId = '4.4.6').item.where(linkId = '4.4.6.2').answer.valueCoding.code" 

* ci -> "QuestionnaireResponse.item.where(linkId = '5').answer.valueReference"

* cancerStage.cancerStage -> "QuestionnaireResponse.item.where(linkId = '6').item.where(linkId = '6.1').answer.valueCoding.code" 
* cancerStage.assessScore -> "QuestionnaireResponse.item.where(linkId = '6').item.where(linkId = '6.2').answer.valueString" 
* cancerStage.assessDate -> "QuestionnaireResponse.item.where(linkId = '6').item.where(linkId = '6.3').answer.valueDate" 

* illness.code -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.1').answer.valueCoding.code" 
* illness.date -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.2').answer.valueDate" 
* illness.oriCancerAjcc -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.3').answer.valueCoding.code" 
* illness.oriCancerAjcc1 -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.4').answer.valueString" 
* illness.cancerStatus -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.5').answer.valueCoding.code" 
* illness.cancerTreatment -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.6').answer.valueCoding.code" 
* illness.cancerTreatmentPlan -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.7').answer.valueCoding.code" 
* illness.cancerTreatmentText -> "QuestionnaireResponse.item.where(linkId = '7').item.where(linkId = '7.8').answer.valueString" 




Mapping: TWCIPatient
Id: TWCIPatient
Title: "Mapping to TWCI Patient"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ci/StructureDefinition/Patient-twci"
* patient -> "Patient"
* patient.idCard -> "Patient.identifier.where(type.coding.code = 'NNxxx').value"
* patient.patID -> "Patient.identifier.where(type.coding.code = 'MR').value"
* patient.name -> "Patient.name.where(use = 'usual').text"
* patient.gender -> "Patient.gender"
* patient.birthday -> "Patient.birthDate"
* patient.zipCode -> "Patient.address.postalCode"
* patient.contactAddr -> "Patient.address.text"
* patient.mobile -> "Patient.telecom.where(system = 'sms').value"
* patient.contactTel -> "Patient.telecom.where(system = 'phone').value"
* patient.email -> "Patient.telecom.where(system = 'email').value"

Mapping: TWCICondition
Id: TWCICondition
Title: "Mapping to TWCI Condition"
Source: ApplyModel
Target: "https://nhicore.nhi.gov.tw/ci/StructureDefinition/Condition-twci"
* ci -> "Condition"
* ci.hvType -> "Condition.category.coding.code"