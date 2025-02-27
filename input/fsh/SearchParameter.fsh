
//-------------------------Bundle-------------------------
Instance: Bundle-id
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Bundle-id"
* name = "BundleID"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "HL7 International"
* description = "重大傷病申請證明(Bundle)的邏輯性ID"
* code = #_id
* base = #Bundle
* expression = "Bundle.id"
* type = #token

//-------------------------Task-------------------------
//-------------------------受理日期-------------------------
Instance: Task-period
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-period"
* name = "TaskPeriod"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請(Task)的受理日期(executionPeriod)"
* code = #period
* base = #Task
* expression = "Task.executionPeriod"
* type = #date

Instance: Task-patient
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-patient"
* name = "TaskPatient"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請(Task)的對象(patient)"
* code = #period
* base = #Task
* expression = "Task.for.where(resolve() is Patient)"
* type = #reference
* chain[0] = "name"
* chain[1] = "identifier"

//---------------------Patient---------------------
//--------------------姓名-------------------
Instance: Patient-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Patient-name"
* name = "PatientName"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "HL7 International"
* description = "病人的姓名(name)，該查詢可能與 HumanName 中的任何字串匹配，包括完整的中文姓名(text)、英文姓(family)、英文名(given)、姓名前面的頭銜(prefix)、姓名後面的稱謂(suffix)。"
* code = #name
* base = #Patient
* expression = "Patient.name"
* type = #string
//------------------身分證號-----------------
Instance: Patient-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Patient-identifier"
* name = "PatientIdentifier"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "HL7 International"
* description = "病人的身分證號(identifier)"
* code = #identifier
* base = #Patient
* expression = "Patient.identifier"
* type = #token


//-------------------------收件日期-------------------------
Instance: Task-authored-on
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-authored-on"
* name = "TaskAuthoredOn"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請(Task)的收件日期(authoredOn)"
* code = #authored-on
* base = #Task
* expression = "Task.authoredOn"
* type = #date

//-------------------------核定日期-------------------------
Instance: Task-modified
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-modified"
* name = "TaskModified"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請(Task)的核定日期(lastModified)"
* code = #modified
* base = #Task
* expression = "Task.lastModified"
* type = #date

//-------------------------受理編號-------------------------
Instance: Task-identifier
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-identifier"
* name = "TaskIdentifier"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請(Task)的核定日期(identifier)"
* code = #identifier
* base = #Task
* expression = "Task.identifier"
* type = #token

//-------------------------查詢進度-------------------------
Instance: Task-status
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-status"
* name = "TaskStatus"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請(Task)的查詢進度(status)"
* code = #status
* base = #Task
* expression = "Task.status"
* type = #token








/*
//-------------------------QuestionnaireResponse-------------------------
Instance: QuestionnaireResponse-patient-idCard
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-patient-idCard"
* name = "QuestionnaireResponsePatientIdCard"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的病人身分證號(2.1 patient.idCard)"
* code = #patient-idCard
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='2.').item.where(linkId='2.1').answer.value as string"
* type = #string

//-------------------------病人姓名-------------------------
Instance: QuestionnaireResponse-patient-name
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-patient-name"
* name = "QuestionnaireResponsePatientName"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的病人姓名(2.2 patient.name)"
* code = #patient-name
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='2.').item.where(linkId='2.2').answer.value as string"
* type = #string

//-------------------------病人出生日期-------------------------
Instance: QuestionnaireResponse-patient-birthday
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-patient-birthday"
* name = "QuestionnaireResponsePatientBirthday"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的病人出生日期(2.4 patient.birthday)"
* code = #patient-birthday
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='2.').item.where(linkId='2.4').answer.value as date"
* type = #date

//-------------------------病人手機號碼-------------------------
Instance: QuestionnaireResponse-patient-mobilePhone
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-patient-mobilePhone"
* name = "QuestionnaireResponsePatientMobilePhone"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的病人手機號碼(2.7 patient.mobilePhone)"
* code = #patient-mobilePhone
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='2.').item.where(linkId='2.7').answer.value as string"
* type = #string

//-------------------------申請日期(上傳日期)-------------------------
Instance: QuestionnaireResponse-applDate
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-applDate"
* name = "QuestionnaireResponseApplDate"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的申請日期（上傳日期）(1.2 hosp.applDate)"
* code = #applDate
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='1.').item.where(linkId='1.2').answer.value as date"
* type = #date

//-------------------------重大傷病類別-------------------------
Instance: QuestionnaireResponse-illnessType
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-illnessType"
* name = "QuestionnaireResponseIllnessType"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的重大傷病類別(5.1 ci.illnessType)"
* code = #illnessType
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='5.').item.where(linkId='5.1').answer.select(value as Coding).code"
* type = #token

//-------------------------醫事機構代碼-------------------------
Instance: QuestionnaireResponse-hospId
InstanceOf: SearchParameter
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/QuestionnaireResponse-hospId"
* name = "QuestionnaireResponseHospId"
* status = #active
* version = "0.1.0"
* date = "2024-12-31"
* publisher = "衛生福利部中央健康保險署"
* description = "重大傷病申請書回覆(QuestionnaireResponse)的醫事機構代碼(1.4 hosp.hospId)"
* code = #hospId
* base = #QuestionnaireResponse
* expression = "QuestionnaireResponse.item.where(linkId='1.').item.where(linkId='1.4').answer.select(value as Coding).code"
* type = #token

/*
//-------------------------受理申請日期-------------------------

//-------------------------核定日期-------------------------

//-------------------------核定註記-------------------------

*/