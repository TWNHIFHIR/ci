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
    medCertBookDate 1..1 MS and
    hospId 1..1 MS and
    acptNo 0..1 MS and
    acptNum 0..1 MS

* item[hosp].item[applType].linkId = "1.1"
* item[hosp].item[applType].text = "hosp.applType|申報方式，醫院報備固定為2。"
* item[hosp].item[applType].answer 1..1 MS
* item[hosp].item[applType].answer.valueCoding 1..1
* item[hosp].item[applType].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-reporting-method

* item[hosp].item[applDate].linkId = "1.2" 
* item[hosp].item[applDate].text = "hosp.applDate|申請日期"
* item[hosp].item[applDate].answer 1..1 MS
//* item[hosp].item[applDate].answer.valueDate only date
//* item[hosp].item[applDate].answer.valueDate 1..1 MS

* item[hosp].item[medCertBookDate].linkId = "1.3" 
* item[hosp].item[medCertBookDate].text = "hosp.medCertBookDate|開立診斷書申請日期"
* item[hosp].item[medCertBookDate].answer 1..1 MS
* item[hosp].item[medCertBookDate].answer.value[x] 1..1
/* item[hosp].item[medCertBookDate].answer.valueDate only date*/
//* item[hosp].item[medCertBookDate].answer.valueDate 1..1 MS

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
    diagPrsnId 1..1 MS and
    diagPrsnName 1..1 MS

* item[doctor].item[diagPrsnId].linkId = "3.1"
* item[doctor].item[diagPrsnId].text = "doctor.diagPrsnId|醫師身分證號"
//* item[doctor].item[diagPrsnId].definition = "醫師國民身分證統一編號"
* item[doctor].item[diagPrsnId].answer 1..1 MS
* item[doctor].item[diagPrsnId].answer.valueString 1..1 MS

* item[doctor].item[diagPrsnName].linkId = "3.2"
* item[doctor].item[diagPrsnName].text = "doctor.diagPrsnName|診斷醫師姓名"
* item[doctor].item[diagPrsnName].answer 1..1 MS
* item[doctor].item[diagPrsnName].answer.valueString 1..1 MS

* item[diagnosis].linkId = "4"
* item[diagnosis].text = "diagnosis|疾病資訊"

* item[diagnosis].item ^slicing.discriminator.type = #value
* item[diagnosis].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item ^slicing.rules = #closed
* item[diagnosis].item contains
    icd10cmCode 1..1 MS and
    //diagName 1..1 MS and
    examinationReport 0..* MS and
    medrec 0..* MS and
    imageStudy 0..* MS

* item[diagnosis].item[icd10cmCode].linkId = "4.1"
* item[diagnosis].item[icd10cmCode].text = "diagnosis.icd10cmCode|主診斷代碼"
* item[diagnosis].item[icd10cmCode].answer 1..1 MS
* item[diagnosis].item[icd10cmCode].answer.valueCoding 1..1 MS
* item[diagnosis].item[icd10cmCode].answer.valueCoding from NHIDiagCodeICD

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
    speType 0..1 MS and
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
* item[diagnosis].item[examinationReport].item[reportResultPdf].text = "diagnosis.examinationReport.reportResultPdf|檢查報告，請填寫完整檔案路徑。填寫格式：「file://檔名.副檔名」。"
* item[diagnosis].item[examinationReport].item[reportResultPdf].answer 1..1 MS
* item[diagnosis].item[examinationReport].item[reportResultPdf].answer.valueString 1..1 MS

* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].linkId = "4.2.5"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].text = "diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].answer 1..1 MS
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].answer.valueString 1..1 MS

* item[diagnosis].item[examinationReport].item[reportDate].linkId = "4.2.6"
* item[diagnosis].item[examinationReport].item[reportDate].text = "diagnosis.examinationReport.reportDate|報告日期，YYYY-MM-DD。"
* item[diagnosis].item[examinationReport].item[reportDate].answer 1..1 MS
//* item[diagnosis].item[examinationReport].item[reportDate].answer.valueDate only date
//* item[diagnosis].item[examinationReport].item[reportDate].answer.valueDate 1..1 MS

* item[diagnosis].item[medrec].linkId = "4.3"
* item[diagnosis].item[medrec].text = "diagnosis.medrec|病歷資料"

* item[diagnosis].item[medrec].item ^slicing.discriminator.type = #value
* item[diagnosis].item[medrec].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[medrec].item ^slicing.rules = #closed
* item[diagnosis].item[medrec].item contains
    medrec 1..1 MS and
    medrecTitle 0..1 MS

* item[diagnosis].item[medrec].item[medrec].linkId = "4.3.1"
* item[diagnosis].item[medrec].item[medrec].text = "diagnosis.medrec.medrec|病歷資料"
* item[diagnosis].item[medrec].item[medrec].answer 1..1 MS
* item[diagnosis].item[medrec].item[medrec].answer.valueString 1..1 MS

* item[diagnosis].item[medrec].item[medrecTitle].linkId = "4.3.2"
* item[diagnosis].item[medrec].item[medrecTitle].text = "diagnosis.medrec.medrecTitle|病歷資料名稱"
* item[diagnosis].item[medrec].item[medrecTitle].answer.valueString 1..1 MS

* item[diagnosis].item[imageStudy].linkId = "4.4"
* item[diagnosis].item[imageStudy].text = "diagnosis.imageStudy|影像報告"

* item[diagnosis].item[imageStudy].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item contains
    imgItem 1..1 MS and
    imgResult 1..1 MS and
    imgDate 1..1 MS and
    imgBodySite 1..1 MS and
    imgDicom 0..* MS and
    imgNonDicom 0..* MS

* item[diagnosis].item[imageStudy].item[imgItem].linkId = "4.4.1"
* item[diagnosis].item[imageStudy].item[imgItem].text = "diagnosis.imageStudy.imgItem|影像報告"
* item[diagnosis].item[imageStudy].item[imgItem].answer.valueCoding  1..1 MS

* item[diagnosis].item[imageStudy].item[imgResult].linkId = "4.4.2"
* item[diagnosis].item[imageStudy].item[imgResult].text = "diagnosis.imageStudy.imgResult|影像報告結果"
* item[diagnosis].item[imageStudy].item[imgResult].answer.valueString  1..1 MS

* item[diagnosis].item[imageStudy].item[imgDate].linkId = "4.4.3"
* item[diagnosis].item[imageStudy].item[imgDate].text = "diagnosis.imageStudy.imgDate|影像報告日期"
* item[diagnosis].item[imageStudy].item[imgDate].answer  1..1 MS

* item[diagnosis].item[imageStudy].item[imgBodySite].linkId = "4.4.4"
* item[diagnosis].item[imageStudy].item[imgBodySite].text = "diagnosis.imageStudy.imgBodySite|影像檢查的身體部位"
* item[diagnosis].item[imageStudy].item[imgBodySite].answer.valueCoding  1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].linkId = "4.4.5"
* item[diagnosis].item[imageStudy].item[imgDicom].text = "diagnosis.imageStudy.imgDicom|DICOM影像"

* item[diagnosis].item[imageStudy].item[imgDicom].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgDicom].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgDicom].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgDicom].item contains
    studyUid 1..1 MS and
    series 1..* MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].linkId = "4.4.5.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].text = "diagnosis.imageStudy.imgDicom.studyUid|整項影像檢查的識別碼"
* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].answer.valueString  1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].linkId = "4.4.5.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].text = "diagnosis.imageStudy.imgDicom.series|每項影像檢查有一個或多個系列(series)的實例"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item contains
    uid 1..1 MS and
    modality 1..1 MS and
    instance 1..* MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].linkId = "4.4.5.2.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].text = "diagnosis.imageStudy.imgDicom.series.uid|此系列的DICOM系列實例UID"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].answer.valueString  1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].linkId = "4.4.5.2.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].text = "diagnosis.imageStudy.imgDicom.series.modality|此系列實例所使用的成像儀器"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].answer.valueCoding  1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].linkId = "4.4.5.2.3"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].text = "diagnosis.imageStudy.imgDicom.series.instance|系列中的一個SOP實例"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item contains
    uid 1..1 MS and
    sopClass 1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].linkId = "4.4.5.2.3.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].text = "diagnosis.imageStudy.imgDicom.series.instance.uid|DICOM影像"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].answer.valueString  1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].linkId = "4.4.5.2.3.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].text = "diagnosis.imageStudy.imgDicom.series.instance.sopClass|DICOM class 類型"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].answer.valueCoding  1..1 MS
//* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].answer.valueCoding from http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1

* item[diagnosis].item[imageStudy].item[imgNonDicom].linkId = "4.4.6"
* item[diagnosis].item[imageStudy].item[imgNonDicom].text = "diagnosis.imageStudy.imgNonDicom|非DICOM影像"

* item[diagnosis].item[imageStudy].item[imgNonDicom].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgNonDicom].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgNonDicom].item contains
    imgNonDicom 1..1 MS and
    imgNonDicomMimeType	 1..1 MS

* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].linkId = "4.4.6.1"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].text = "diagnosis.imageStudy.imgNonDicom.imgNonDicom|非DICOM影像"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].answer.valueString  1..1 MS

* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].linkId = "4.4.6.2"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].text = "diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType|非DICOM影像MimeType"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].answer.valueCoding  1..1 MS
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/media-mimetypes


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
* item[cancerStage].item[cancerStage].text = "cancerStage.cancerStage|癌症期別，醫院自行填入癌症期別(1~4)，若為不適用者填9(不適用)。"
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
* item[cancerStage].item[assessDate].text = "cancerStage.assessDate|癌症分期量表評估日期，YYYY-MM-DD，西元年月日，民國前為負數。"
* item[cancerStage].item[assessDate].answer 1..1 MS
/** item[cancerStage].item[assessDate].answer.valueDate only date
* item[cancerStage].item[assessDate].answer.valueDate 1..1 MS*/

* item[illness].linkId = "7"
* item[illness].text = "illness|惡性腫瘤重大傷病換發評估表"

* item[illness].item ^slicing.discriminator.type = #value
* item[illness].item ^slicing.discriminator.path = "linkId"
* item[illness].item ^slicing.rules = #closed
* item[illness].item contains
    oriCancerCode 1..1 MS and
    oriCancerDxDate 0..1 MS and
    oriCancerAjcc 0..1 MS and
    oriCancerAjcc1 0..1 MS and
    cancerStatus 0..1 MS and
    cancerTreatment 0..1 MS

* item[illness].item[oriCancerCode].linkId = "7.1"
* item[illness].item[oriCancerCode].text = "illness.oriCancerCode|原發癌症診斷碼，最長為7碼。"
* item[illness].item[oriCancerCode].answer 1..1 MS
* item[illness].item[oriCancerCode].answer.valueCoding 1..1 MS
* item[illness].item[oriCancerCode].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-primary-cancer-icd

* item[illness].item[oriCancerDxDate].linkId = "7.2"
* item[illness].item[oriCancerDxDate].text = "illness.oriCancerDxDate|癌症最初診斷日期，西元年月日；不得大於系統日。"
* item[illness].item[oriCancerDxDate].answer 1..1 MS

* item[illness].item[oriCancerAjcc].linkId = "7.3"
* item[illness].item[oriCancerAjcc].text = "illness.oriCancerAjcc|癌症最初診斷AJCC分期(病理分期或未接受治療前的臨床分期)，依期別填入；若不是用此分類而用其他分類，則填寫9。"
* item[illness].item[oriCancerAjcc].answer 1..1 MS
* item[illness].item[oriCancerAjcc].answer.valueCoding 1..1 MS
* item[illness].item[oriCancerAjcc].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstaging

* item[illness].item[oriCancerAjcc1].linkId = "7.4"
* item[illness].item[oriCancerAjcc1].text = "illness.oriCancerAjcc1|癌症最初診斷AJCC分期_補充說明欄位，若前述欄位為9，則請於此欄位描述其他系統之其他分期為何。"
* item[illness].item[oriCancerAjcc1].answer 1..1 MS
* item[illness].item[oriCancerAjcc1].answer.valueString 1..1 MS

* item[illness].item[cancerStatus].linkId = "7.5"
* item[illness].item[cancerStatus].text = "illness.cancerStatus|目前癌症狀態"
* item[illness].item[cancerStatus].answer 1..1 MS
* item[illness].item[cancerStatus].answer.valueCoding 1..1 MS
* item[illness].item[cancerStatus].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstage-status

* item[illness].item[cancerTreatment].linkId = "7.6"
* item[illness].item[cancerTreatment].text = "illness.cancerTreatment|後續治療評估，可複選。"
* item[illness].item[cancerTreatment].answer 1.. MS
* item[illness].item[cancerTreatment].answer.valueCoding 1..1 MS
* item[illness].item[cancerTreatment].answer.valueCoding from https://twcore.mohw.gov.tw/ig/ci/ValueSet/nhi-cancerstage-cancerTreatment


* item[hosp].item[medCertBookDate] obeys medCertBookDate
* item[doctor].item[diagPrsnId].answer.valueString obeys txt-10
* item[doctor].item[diagPrsnName].answer.valueString obeys txt-12


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
* item[illness].item[oriCancerAjcc1].answer.valueString obeys txt-20

Invariant:   medCertBookDate
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