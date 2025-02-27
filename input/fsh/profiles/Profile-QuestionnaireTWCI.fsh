Profile:        QuestionnaireTWCI
Parent:         Questionnaire
Id:             Questionnaire-twci
Title:          "重大傷病申請書-Questionnaire TWCI"
Description:    "此重大傷病申請書-Questionnaire TWCI Profile說明TWCI IG如何進一步定義FHIR的Questionnaire Resource以呈現重大傷病申請書中之內容"
* status = http://hl7.org/fhir/fm-status#active
* item MS

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
* item[hosp].type = #group
* item[hosp].required = true

* item[hosp].item ^slicing.discriminator.type = #value
* item[hosp].item ^slicing.discriminator.path = "linkId"
* item[hosp].item ^slicing.rules = #closed
* item[hosp].item contains
    applType 1..1 MS and
    applDate 1..1 MS and
    diagRepApplyDate 1..1 MS and
    hospId 1..1 MS and
    acptNo 0..1 MS and
    acptNum 0..1 MS

* item[hosp].item[applType].linkId = "1.1"
* item[hosp].item[applType].text = "hosp.applType|申報方式"
* item[hosp].item[applType].type = #choice
* item[hosp].item[applType].definition = "醫院報備固定為2"
* item[hosp].item[applType].required = true
* item[hosp].item[applType].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-reporting-method"

* item[hosp].item[applDate].linkId = "1.2" 
* item[hosp].item[applDate].text = "hosp.applDate|申請日期"
* item[hosp].item[applDate].type = #date
* item[hosp].item[applDate].required = true

* item[hosp].item[diagRepApplyDate].linkId = "1.3" 
* item[hosp].item[diagRepApplyDate].text = "hosp.diagRepApplyDate|開立診斷書申請日期"
* item[hosp].item[diagRepApplyDate].type = #date
* item[hosp].item[diagRepApplyDate].required = true

* item[hosp].item[hospId].linkId = "1.4" 
* item[hosp].item[hospId].text = "hosp.hospId|醫事機構代碼"
* item[hosp].item[hospId].type = #choice
* item[hosp].item[hospId].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-organization"
* item[hosp].item[hospId].required = true

* item[hosp].item[acptNo].linkId = "1.5" 
* item[hosp].item[acptNo].text = "hosp.acptNo|受理編號"
* item[hosp].item[acptNo].type = #string

* item[hosp].item[acptNum].linkId = "1.6"
* item[hosp].item[acptNum].text = "hosp.acptNum|受理次數"
* item[hosp].item[acptNum].type = #integer

* item[patient].linkId = "2"
* item[patient].text = "patient|病人資訊"
* item[patient].type = #reference
* item[patient].required = true
* item[patient].answerOption.value[x] only Reference
* item[patient].answerOption.valueReference 1..1

* item[doctor].linkId = "3"
* item[doctor].text = "doctor|醫師資訊"
* item[doctor].type = #group
* item[doctor].required = true

* item[doctor].item ^slicing.discriminator.type = #value
* item[doctor].item ^slicing.discriminator.path = "linkId"
* item[doctor].item ^slicing.rules = #closed
* item[doctor].item contains
    drIdCard 1..1 MS and
    drName 1..1 MS

* item[doctor].item[drIdCard].linkId = "3.1"
* item[doctor].item[drIdCard].text = "doctor.drIdCard|醫師身分證號"
* item[doctor].item[drIdCard].definition = "醫師國民身分證統一編號"
* item[doctor].item[drIdCard].type = #string
* item[doctor].item[drIdCard].required = true

* item[doctor].item[drName].linkId = "3.2"
* item[doctor].item[drName].text = "doctor.drName|診斷醫師姓名"
* item[doctor].item[drName].type = #string
* item[doctor].item[drName].required = true

* item[diagnosis].linkId = "4"
* item[diagnosis].text = "diagnosis|疾病資訊"
* item[diagnosis].type = #group
* item[diagnosis].required = true

* item[diagnosis].item ^slicing.discriminator.type = #value
* item[diagnosis].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item ^slicing.rules = #closed
* item[diagnosis].item contains
    diagCode 1..1 MS and
    //diagName 1..1 MS and
    examinationReport 0..* MS

* item[diagnosis].item[diagCode].linkId = "4.1"
* item[diagnosis].item[diagCode].text = "diagnosis.diagCode|主診斷代碼"
* item[diagnosis].item[diagCode].type = #choice
* item[diagnosis].item[diagCode].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-diag-code-icd"
* item[diagnosis].item[diagCode].required = true

/* item[diagnosis].item[diagName].linkId = "4.2"
* item[diagnosis].item[diagName].text = "diagnosis.diagName|主診斷病名"
* item[diagnosis].item[diagName].type = #string
* item[diagnosis].item[diagName].required = true*/

* item[diagnosis].item[examinationReport].linkId = "4.2"
* item[diagnosis].item[examinationReport].text = "diagnosis.examinationReport|檢查報告"
* item[diagnosis].item[examinationReport].type = #group

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
* item[diagnosis].item[examinationReport].item[reportType].definition = "如果報告類型無法表述，使用暫代碼(99999[待確認])，並填寫code.text"
* item[diagnosis].item[examinationReport].item[reportType].type = #choice
* item[diagnosis].item[examinationReport].item[reportType].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/loinc-report-type"
* item[diagnosis].item[examinationReport].item[reportType].repeats = true

* item[diagnosis].item[examinationReport].item[speType].linkId = "4.2.2"
* item[diagnosis].item[examinationReport].item[speType].text = "diagnosis.examinationReport.speType|檢體種類"
* item[diagnosis].item[examinationReport].item[speType].type = #string

* item[diagnosis].item[examinationReport].item[reportResultString].linkId = "4.2.3"
* item[diagnosis].item[examinationReport].item[reportResultString].text = "diagnosis.examinationReport.reportResultString|報告結果-文數字"
* item[diagnosis].item[examinationReport].item[reportResultString].type = #string
* item[diagnosis].item[examinationReport].item[reportResultString].repeats = true

* item[diagnosis].item[examinationReport].item[reportResultPdf].linkId = "4.2.4"
* item[diagnosis].item[examinationReport].item[reportResultPdf].text = "diagnosis.examinationReport.reportResultPdf|檢查報告"
* item[diagnosis].item[examinationReport].item[reportResultPdf].definition = "請填寫完整檔案路徑，填寫格式：file://檔名.副檔名"
* item[diagnosis].item[examinationReport].item[reportResultPdf].type = #string

* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].linkId = "4.2.5"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].text = "diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].definition = "檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].type = #string

* item[diagnosis].item[examinationReport].item[reportDate].linkId = "4.2.6"
* item[diagnosis].item[examinationReport].item[reportDate].text = "diagnosis.examinationReport.reportDate|報告日期"
* item[diagnosis].item[examinationReport].item[reportDate].definition = "YYYY-MM-DD"
* item[diagnosis].item[examinationReport].item[reportDate].type = #date
//* item[diagnosis].item[examinationReport].item[reportDate].repeats = true

* item[ci].linkId = "5"
* item[ci].text = "ci|重大傷病"
* item[ci].type = #reference
* item[ci].required = true
* item[ci].answerOption.value[x] only Reference
* item[ci].answerOption.valueReference 1..1

* item[cancerStage].linkId = "6"
* item[cancerStage].text = "cancerStage|癌症期別"
* item[cancerStage].type = #group
* item[cancerStage].required = true

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
* item[cancerStage].item[cancerStage].type = #choice
* item[cancerStage].item[cancerStage].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/cancer-stage"
* item[cancerStage].item[cancerStage].required = true

* item[cancerStage].item[assessScore].linkId = "6.2"
* item[cancerStage].item[assessScore].text = "cancerStage.assessScore|癌症分期分數或結果"
* item[cancerStage].item[assessScore].type = #string

* item[cancerStage].item[earlyStage].linkId = "6.3"
* item[cancerStage].item[earlyStage].text = "cancerStage.earlyStage|初期癌症期別"
* item[cancerStage].item[earlyStage].type = #string

* item[cancerStage].item[actualStage].linkId = "6.4"
* item[cancerStage].item[actualStage].text = "cancerStage.actualStage|實際癌症期別"
* item[cancerStage].item[actualStage].type = #string

* item[cancerStage].item[assessDate].linkId = "6.5"
* item[cancerStage].item[assessDate].text = "cancerStage.assessDate|癌症分期量表評估日期"
* item[cancerStage].item[assessDate].definition = "YYYY-MM-DD，西元年月日，民國前為負數"
* item[cancerStage].item[assessDate].type = #date

* item[illness].linkId = "7"
* item[illness].text = "illness|惡性腫瘤重大傷病換發評估表"
* item[illness].type = #group
* item[illness].required = true

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
* item[illness].item[primaryCancerIcd].type = #choice
* item[illness].item[primaryCancerIcd].definition = "最長為7碼"
* item[illness].item[primaryCancerIcd].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-primary-cancer-icd"

* item[illness].item[cancerDate].linkId = "7.2"
* item[illness].item[cancerDate].text = "illness.cancerDate|癌症最初診斷日期"
* item[illness].item[cancerDate].definition = "西元年月日；不得大於系統日"
* item[illness].item[cancerDate].type = #date

* item[illness].item[ajccStage].linkId = "7.3"
* item[illness].item[ajccStage].text = "illness.ajccStage|癌症最初診斷AJCC分期(病理分期或未接受治療前的臨床分期)"
* item[illness].item[ajccStage].definition = "依期別填入；若不是用此分類而用其他分類，則填寫9"
* item[illness].item[ajccStage].type = #choice
* item[illness].item[ajccStage].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstaging"

* item[illness].item[ajccStageNotes].linkId = "7.4"
* item[illness].item[ajccStageNotes].text = "illness.ajccStageNotes|癌症最初診斷AJCC分期_補充說明欄位"
* item[illness].item[ajccStageNotes].definition = "若前述欄位為9，則請於此欄位描述其他系統之其他分期為何"
* item[illness].item[ajccStageNotes].type = #string

* item[illness].item[cancerStatus].linkId = "7.5"
* item[illness].item[cancerStatus].text = "illness.cancerStatus|目前癌症狀態"
* item[illness].item[cancerStatus].type = #choice
* item[illness].item[cancerStatus].required = true
* item[illness].item[cancerStatus].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstage-status"

* item[illness].item[assessment].linkId = "7.6"
* item[illness].item[assessment].text = "illness.assessment|後續治療評估"
* item[illness].item[assessment].definition = "可複選"
* item[illness].item[assessment].type = #choice
* item[illness].item[assessment].answerValueSet = "https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstage-assessment"
* item[illness].item[assessment].required = true
* item[illness].item[assessment].repeats = true

* item.linkId ^short = "問卷題目編號"
* item.type ^short = "答題類型。group:組合題 ｜ date:日期 ｜ string:字串 ｜ integer:整數｜ choice:選擇｜ attachment:文件｜ text:文字"


