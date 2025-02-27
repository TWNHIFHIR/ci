Profile:        QuestionnaireResponseTWCI
Parent:         QuestionnaireResponse
Id:             QuestionnaireResponse-twci
Title:          "重大傷病申請書回覆-QuestionnaireResponse TWCI"
Description:    "此重大傷病申請書回覆-QuestionnaireResponse TWCI Profile說明TWCI IG如何進一步定義FHIR的QuestionnaireResponse Resource以呈現重大傷病申請書回覆中之內容"

* status = #completed
* questionnaire 1..1 MS
* questionnaire = "https://twcore.mohw.gov.tw/ig/ci/Questionnaire/apply-catastrophic-illness"
* questionnaire only Canonical(https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Questionnaire-twci)
* item MS
* item.linkId ^short = "問卷題目編號"

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    hosp 1..1 MS and
    patient 1..1 MS and
    doctor 1..1 MS and
    diagnosis 1..1 MS and
    ci 1..1 MS and
    cancerStage 1..1 MS and
    illness 1..1 MS

* item[hosp].linkId = "1"
* item[hosp].text = "hosp|院所資訊"
* item[hosp].item ^slicing.discriminator.type = #value
* item[hosp].item ^slicing.discriminator.path = "linkId"
* item[hosp].item ^slicing.rules = #closed
* item[hosp].item 4..6
* item[hosp].item contains
    applType 1..1 MS and
    applDate 1..1 MS and
    diagRepApplyDate 1..1 MS and
    hospId 1..1 MS and
    acptNo 0..1 MS and
    acptNum 0..1 MS

* item[hosp].item[applType].linkId = "1.1"
* item[hosp].item[applType].text = "hosp.applType|申報方式"
* item[hosp].item[applType].definition = "醫院報備固定為2"
* item[hosp].item[applType].answer 1..1 MS
* item[hosp].item[applType].answer.valueCoding 1..1
* item[hosp].item[applType].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-reporting-method

* item[hosp].item[applDate].linkId = "1.2" 
* item[hosp].item[applDate].text = "hosp.applDate|申請日期"
* item[hosp].item[applDate].answer 1..1 MS
//* item[hosp].item[applDate].answer.valueDate only date
//* item[hosp].item[applDate].answer.valueDate 1..1 MS

* item[hosp].item[diagRepApplyDate].linkId = "1.3" 
* item[hosp].item[diagRepApplyDate].text = "hosp.diagRepApplyDate|開立診斷書申請日期"
* item[hosp].item[diagRepApplyDate].answer 1..1 MS
* item[hosp].item[diagRepApplyDate].answer.value[x] 1..1
/* item[hosp].item[diagRepApplyDate].answer.valueDate only date*/
//* item[hosp].item[diagRepApplyDate].answer.valueDate 1..1 MS

* item[hosp].item[hospId].linkId = "1.4" 
* item[hosp].item[hospId].text = "hosp.hospId|醫事機構代碼"
* item[hosp].item[hospId].answer 1..1 MS
* item[hosp].item[hospId].answer.valueCoding 1..1
* item[hosp].item[hospId].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-organization

* item[hosp].item[acptNo].linkId = "1.5" 
* item[hosp].item[acptNo].text = "hosp.acptNo|受理編號"
* item[hosp].item[acptNo].answer 1..1 MS
* item[hosp].item[acptNo].answer.valueString 1..1

* item[hosp].item[acptNum].linkId = "1.6"
* item[hosp].item[acptNum].text = "hosp.acptNum|受理次數"
* item[hosp].item[acptNum].answer 1..1 MS
//* item[hosp].item[acptNum].answer.valueInteger 1..1 MS
//* item[hosp].item[acptNum].answer.value[x]

* item[patient].linkId = "2"
* item[patient].text = "patient|病人資訊"
* item[patient].answer 1..1 MS
* item[patient].answer.valueReference only Reference(PatientTWCI)

* item[doctor].linkId = "3"
* item[doctor].text = "doctor|醫師資訊"

* item[doctor].item ^slicing.discriminator.type = #value
* item[doctor].item ^slicing.discriminator.path = "linkId"
* item[doctor].item ^slicing.rules = #closed
* item[doctor].item contains
    drIdCard 1..1 MS and
    drName 1..1 MS

* item[doctor].item[drIdCard].linkId = "3.1"
* item[doctor].item[drIdCard].text = "doctor.drIdCard|醫師身分證號"
* item[doctor].item[drIdCard].definition = "醫師國民身分證統一編號"
* item[doctor].item[drIdCard].answer 1..1 MS
* item[doctor].item[drIdCard].answer.valueString 1..1 MS

* item[doctor].item[drName].linkId = "3.2"
* item[doctor].item[drName].text = "doctor.drName|診斷醫師姓名"
* item[doctor].item[drName].answer 1..1 MS
* item[doctor].item[drName].answer.valueString 1..1 MS

* item[diagnosis].linkId = "4"
* item[diagnosis].text = "diagnosis|疾病資訊"

* item[diagnosis].item ^slicing.discriminator.type = #value
* item[diagnosis].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item ^slicing.rules = #closed
* item[diagnosis].item contains
    diagCode 1..1 MS and
    //diagName 1..1 MS and
    examinationReport 0..* MS

* item[diagnosis].item[diagCode].linkId = "4.1"
* item[diagnosis].item[diagCode].text = "diagnosis.diagCode|主診斷代碼"
* item[diagnosis].item[diagCode].answer 1..1 MS
* item[diagnosis].item[diagCode].answer.valueCoding 1..1 MS
* item[diagnosis].item[diagCode].answer.valueCoding from NHIDiagCodeICD

/* item[diagnosis].item[diagName].linkId = "4.2"
* item[diagnosis].item[diagName].text = "diagnosis.diagName|主診斷病名"
* item[diagnosis].item[diagName].answer 1..1 MS
* item[diagnosis].item[diagName].answer.valueString 1..1 MS*/

* item[diagnosis].item[examinationReport].linkId = "4.2"
* item[diagnosis].item[examinationReport].text = "diagnosis.examinationReport|檢查報告"

* item[diagnosis].item[examinationReport].item ^slicing.discriminator.type = #value
* item[diagnosis].item[examinationReport].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[examinationReport].item ^slicing.rules = #closed
* item[diagnosis].item[examinationReport].item contains
    reportType 1..1 MS and
    speType 1..1 MS and
    reportResultString 0..1 MS and
    reportResultPdf 0..1 MS and
    reportResultPdfTitle 0..1 MS and
    reportDate 0..1 MS

* item[diagnosis].item[examinationReport].item[reportType].linkId = "4.2.1"
* item[diagnosis].item[examinationReport].item[reportType].text = "diagnosis.examinationReport.reportType|報告類型"
* item[diagnosis].item[examinationReport].item[reportType].answer 1..* MS
* item[diagnosis].item[examinationReport].item[reportType].answer.valueCoding 1..1 MS
* item[diagnosis].item[examinationReport].item[reportType].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/loinc-report-type

* item[diagnosis].item[examinationReport].item[speType].linkId = "4.2.2"
* item[diagnosis].item[examinationReport].item[speType].text = "diagnosis.examinationReport.speType|檢體種類"
* item[diagnosis].item[examinationReport].item[speType].answer 1..1 MS
* item[diagnosis].item[examinationReport].item[speType].answer.valueString 1..1 MS

* item[diagnosis].item[examinationReport].item[reportResultString].linkId = "4.2.3"
* item[diagnosis].item[examinationReport].item[reportResultString].text = "diagnosis.examinationReport.reportResultString|報告結果-文數字"
* item[diagnosis].item[examinationReport].item[reportResultString].answer 1..* MS
* item[diagnosis].item[examinationReport].item[reportResultString].answer.valueString 1..1 MS

* item[diagnosis].item[examinationReport].item[reportResultPdf].linkId = "4.2.4"
* item[diagnosis].item[examinationReport].item[reportResultPdf].text = "diagnosis.examinationReport.reportResultPdf|檢查報告"
* item[diagnosis].item[examinationReport].item[reportResultPdf].answer 1..1 MS
* item[diagnosis].item[examinationReport].item[reportResultPdf].answer.valueString 1..1 MS

* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].linkId = "4.2.5"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].text = "diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].definition = "檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].answer 1..1 MS
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].answer.valueString 1..1 MS

* item[diagnosis].item[examinationReport].item[reportDate].linkId = "4.2.6"
* item[diagnosis].item[examinationReport].item[reportDate].text = "diagnosis.examinationReport.reportDate|報告日期"
* item[diagnosis].item[examinationReport].item[reportDate].definition = "YYYY-MM-DD"
* item[diagnosis].item[examinationReport].item[reportDate].answer 1..1 MS
//* item[diagnosis].item[examinationReport].item[reportDate].answer.valueDate only date
//* item[diagnosis].item[examinationReport].item[reportDate].answer.valueDate 1..1 MS

* item[ci].linkId = "5"
* item[ci].text = "ci|重大傷病"
* item[ci].answer 1..1 MS
* item[ci].answer.valueReference only Reference(ConditionTWCI)

* item[cancerStage].linkId = "6"
* item[cancerStage].text = "cancerStage|癌症期別"

* item[cancerStage].item ^slicing.discriminator.type = #value
* item[cancerStage].item ^slicing.discriminator.path = "linkId"
* item[cancerStage].item ^slicing.rules = #closed
* item[cancerStage].item contains
    cancerStage 1..1 MS and
    assessScore 0..1 MS and
    earlyStage 0..1 MS and
    actualStage 0..1 MS and
    assessDate 0..1 MS

* item[cancerStage].item[cancerStage].linkId = "6.1"
* item[cancerStage].item[cancerStage].text = "cancerStage.cancerStage|癌症期別"
* item[cancerStage].item[cancerStage].definition = "醫院自行填入癌症期別(1~4)，若為不適用者填9(不適用)"
* item[cancerStage].item[cancerStage].answer 1..1 MS
* item[cancerStage].item[cancerStage].answer.valueCoding 1..1 MS
* item[cancerStage].item[cancerStage].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/cancer-stage

* item[cancerStage].item[assessScore].linkId = "6.2"
* item[cancerStage].item[assessScore].text = "cancerStage.assessScore|癌症分期分數或結果"
* item[cancerStage].item[assessScore].answer 1..1 MS
* item[cancerStage].item[assessScore].answer.valueString 1..1 MS

* item[cancerStage].item[earlyStage].linkId = "6.3"
* item[cancerStage].item[earlyStage].text = "cancerStage.earlyStage|初期癌症期別"
* item[cancerStage].item[earlyStage].answer 1..1 MS

* item[cancerStage].item[actualStage].linkId = "6.4"
* item[cancerStage].item[actualStage].text = "cancerStage.actualStage|實際癌症期別"
* item[cancerStage].item[actualStage].answer 1..1 MS

* item[cancerStage].item[assessDate].linkId = "6.5"
* item[cancerStage].item[assessDate].text = "cancerStage.assessDate|癌症分期量表評估日期"
* item[cancerStage].item[assessDate].answer 1..1 MS
/** item[cancerStage].item[assessDate].answer.valueDate only date
* item[cancerStage].item[assessDate].answer.valueDate 1..1 MS*/

* item[illness].linkId = "7"
* item[illness].text = "illness|惡性腫瘤重大傷病換發評估表"

* item[illness].item ^slicing.discriminator.type = #value
* item[illness].item ^slicing.discriminator.path = "linkId"
* item[illness].item ^slicing.rules = #closed
* item[illness].item contains
    primaryCancerIcd 1..1 MS and
    cancerDate 0..1 MS and
    ajccStage 0..1 MS and
    ajccStageNotes 0..1 MS and
    cancerStatus 0..1 MS and
    assessment 0..1 MS

* item[illness].item[primaryCancerIcd].linkId = "7.1"
* item[illness].item[primaryCancerIcd].text = "illness.primaryCancerIcd|原發癌症診斷碼"
* item[illness].item[primaryCancerIcd].answer 1..1 MS
* item[illness].item[primaryCancerIcd].answer.valueCoding 1..1 MS
* item[illness].item[primaryCancerIcd].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-primary-cancer-icd

* item[illness].item[cancerDate].linkId = "7.2"
* item[illness].item[cancerDate].text = "illness.cancerDate|癌症最初診斷日期"
* item[illness].item[cancerDate].answer 1..1 MS

* item[illness].item[ajccStage].linkId = "7.3"
* item[illness].item[ajccStage].text = "illness.ajccStage|癌症最初診斷AJCC分期(病理分期或未接受治療前的臨床分期)"
* item[illness].item[ajccStage].definition = "依期別填入；若不是用此分類而用其他分類，則填寫9"
* item[illness].item[ajccStage].answer 1..1 MS
* item[illness].item[ajccStage].answer.valueCoding 1..1 MS
* item[illness].item[ajccStage].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstaging

* item[illness].item[ajccStageNotes].linkId = "7.4"
* item[illness].item[ajccStageNotes].text = "illness.ajccStageNotes|癌症最初診斷AJCC分期_補充說明欄位"
* item[illness].item[ajccStageNotes].answer 1..1 MS
* item[illness].item[ajccStageNotes].answer.valueString 1..1 MS

* item[illness].item[cancerStatus].linkId = "7.5"
* item[illness].item[cancerStatus].text = "illness.cancerStatus|目前癌症狀態"
* item[illness].item[cancerStatus].answer 1..1 MS
* item[illness].item[cancerStatus].answer.valueCoding 1..1 MS
* item[illness].item[cancerStatus].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstage-status

* item[illness].item[assessment].linkId = "7.6"
* item[illness].item[assessment].text = "illness.assessment|後續治療評估"
* item[illness].item[assessment].definition = "可複選"
* item[illness].item[assessment].answer 1.. MS
* item[illness].item[assessment].answer.valueCoding 1..1 MS
* item[illness].item[assessment].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstage-assessment


* item[hosp].item[diagRepApplyDate] obeys diagRepApplyDate
* item[doctor].item[drIdCard].answer.valueString obeys txt-10
* item[doctor].item[drName].answer.valueString obeys txt-12


//癌症分期分數或結果
* item[cancerStage].item[assessScore].answer.valueString obeys txt-12
//檢體種類
* item[diagnosis].item[examinationReport].item[speType].answer.valueString obeys txt-20
//報告結果-文數字
* item[diagnosis].item[examinationReport].item[reportResultString].answer.valueString obeys txt-4000
//檢查報告
* item[diagnosis].item[examinationReport].item[reportResultPdf].answer.valueString obeys txt-50
//檢查報告名稱
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].answer.valueString obeys txt-50
//癌症最初診斷AJCC分期_補充說明欄位
* item[illness].item[ajccStageNotes].answer.valueString obeys txt-20

Invariant:   diagRepApplyDate
Description: "開立診斷書申請日期，不可大於系統日，不可小於2016-01-01，且為系統日之30日內。"
Expression:  "answer.value.ofType(date) <= today() and answer.value.ofType(date) >= @2016-01-01 and answer.value.ofType(date) >= today() - 30 days"
Severity:    #error

Invariant:   txt-10
Description: "長度不得超過10字"
Expression:  "length() <= 10"
Severity:    #error

Invariant:   txt-12
Description: "長度不得超過12字"
Expression:  "length() <= 12"
Severity:    #error

Invariant:   txt-15
Description: "長度不得超過15字"
Expression:  "length() <= 15"
Severity:    #error

Invariant:   txt-20
Description: "長度不得超過20字"
Expression:  "length() <= 20"
Severity:    #error

Invariant:   txt-40
Description: "長度不得超過40字"
Expression:  "length() <= 40"
Severity:    #error

Invariant:   txt-50
Description: "長度不得超過50字"
Expression:  "length() <= 50"
Severity:    #error

Invariant:   txt-80
Description: "長度不得超過80字"
Expression:  "length() <= 80"
Severity:    #error

Invariant:   txt-4000
Description: "長度不得超過4000字"
Expression:  "length() <= 4000"
Severity:    #error