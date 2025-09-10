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
    applMode 1..1 MS and
    applType 1..1 MS and
    applDate 1..1 MS and
    medCertBookDate 1..1 MS and
    hospId 1..1 MS and
    acptNo 0..1 MS and
    acptNum 0..1 MS

* item[hosp].item[applMode].linkId = "1.1"
* item[hosp].item[applMode].text = "hosp.applMode|申報方式"
* item[hosp].item[applMode].type = #choice
* item[hosp].item[applMode].required = true
* item[hosp].item[applMode].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-apply-mode"

* item[hosp].item[applType].linkId = "1.2"
* item[hosp].item[applType].text = "hosp.applType|申報類別"
* item[hosp].item[applType].type = #choice
* item[hosp].item[applType].required = true
* item[hosp].item[applType].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-apply-type"

* item[hosp].item[applDate].linkId = "1.3" 
* item[hosp].item[applDate].text = "hosp.applDate|申請日期"
* item[hosp].item[applDate].type = #date
* item[hosp].item[applDate].required = true

* item[hosp].item[medCertBookDate].linkId = "1.4" 
* item[hosp].item[medCertBookDate].text = "hosp.medCertBookDate|開立診斷書申請日期"
* item[hosp].item[medCertBookDate].type = #date
* item[hosp].item[medCertBookDate].required = true

* item[hosp].item[hospId].linkId = "1.5" 
* item[hosp].item[hospId].text = "hosp.hospId|醫事機構代碼"
* item[hosp].item[hospId].type = #choice
* item[hosp].item[hospId].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-organization"
* item[hosp].item[hospId].required = true

* item[hosp].item[acptNo].linkId = "1.6" 
* item[hosp].item[acptNo].text = "hosp.acptNo|受理編號"
* item[hosp].item[acptNo].type = #string

* item[hosp].item[acptNum].linkId = "1.7"
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
    diagPrsnId 0..1 MS and
    diagPrsnName 1..1 MS

* item[doctor].item[diagPrsnId].linkId = "3.1"
* item[doctor].item[diagPrsnId].text = "doctor.diagPrsnId|醫師身分證號"
* item[doctor].item[diagPrsnId].type = #string


* item[doctor].item[diagPrsnName].linkId = "3.2"
* item[doctor].item[diagPrsnName].text = "doctor.diagPrsnName|診斷醫師姓名"
* item[doctor].item[diagPrsnName].type = #string
* item[doctor].item[diagPrsnName].required = true

* item[diagnosis].linkId = "4"
* item[diagnosis].text = "diagnosis|疾病資訊"
* item[diagnosis].type = #group


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
* item[diagnosis].item[icd10cmCode].type = #choice
* item[diagnosis].item[icd10cmCode].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-diag-code-icd"
* item[diagnosis].item[icd10cmCode].required = true

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
    reportType 0..1 MS and
    speType 0..1 MS and
    reportResultString 0..1 MS and
    reportResultPdf 0..1 MS and
    reportResultPdfTitle 0..1 MS and
    reportDate 0..1 MS

* item[diagnosis].item[examinationReport].item[reportType].linkId = "4.2.1"
* item[diagnosis].item[examinationReport].item[reportType].text = "diagnosis.examinationReport.reportType|報告類型。當LOINC無法具體描述檢體種類（例如：`47526-9`時），請填寫及補充說明檢體種類。"
* item[diagnosis].item[examinationReport].item[reportType].type = #choice
* item[diagnosis].item[examinationReport].item[reportType].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/loinc-report-type"

* item[diagnosis].item[examinationReport].item[speType].linkId = "4.2.2"
* item[diagnosis].item[examinationReport].item[speType].text = "diagnosis.examinationReport.speType|檢體種類"
* item[diagnosis].item[examinationReport].item[speType].type = #string

* item[diagnosis].item[examinationReport].item[reportResultString].linkId = "4.2.3"
* item[diagnosis].item[examinationReport].item[reportResultString].text = "diagnosis.examinationReport.reportResultString|報告結果-文數字"
* item[diagnosis].item[examinationReport].item[reportResultString].type = #string

* item[diagnosis].item[examinationReport].item[reportResultPdf].linkId = "4.2.4"
* item[diagnosis].item[examinationReport].item[reportResultPdf].text = "diagnosis.examinationReport.reportResultPdf|檢查報告檔案，請填寫完整檔案路徑。填寫格式：「file://檔名.副檔名」。"
* item[diagnosis].item[examinationReport].item[reportResultPdf].type = #string

* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].linkId = "4.2.5"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].text = "diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].type = #string

* item[diagnosis].item[examinationReport].item[reportDate].linkId = "4.2.6"
* item[diagnosis].item[examinationReport].item[reportDate].text = "diagnosis.examinationReport.reportDate|報告日期，YYYY-MM-DD。"
* item[diagnosis].item[examinationReport].item[reportDate].type = #date

* item[diagnosis].item[medrec].linkId = "4.3"
* item[diagnosis].item[medrec].text = "diagnosis.medrec|病歷資料"
* item[diagnosis].item[medrec].type = #group
* item[diagnosis].item[medrec].repeats = true

* item[diagnosis].item[medrec].item ^slicing.discriminator.type = #value
* item[diagnosis].item[medrec].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[medrec].item ^slicing.rules = #closed
* item[diagnosis].item[medrec].item contains
    medrec 0..1 MS and
    medrecTitle 0..1 MS

* item[diagnosis].item[medrec].item[medrec].linkId = "4.3.1"
* item[diagnosis].item[medrec].item[medrec].text = "diagnosis.medrec.medrec|病歷資料"
* item[diagnosis].item[medrec].item[medrec].type = #string

* item[diagnosis].item[medrec].item[medrecTitle].linkId = "4.3.2"
* item[diagnosis].item[medrec].item[medrecTitle].text = "diagnosis.medrec.medrecTitle|病歷資料名稱"
* item[diagnosis].item[medrec].item[medrecTitle].type = #string

* item[diagnosis].item[imageStudy].linkId = "4.4"
* item[diagnosis].item[imageStudy].text = "diagnosis.imageStudy|影像報告"
* item[diagnosis].item[imageStudy].type = #group
* item[diagnosis].item[imageStudy].repeats = true

* item[diagnosis].item[imageStudy].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item contains
    imgItem 0..1 MS and
    imgResult 0..1 MS and
    imgDate 0..1 MS and
    imgBodySite 0..1 MS and
    imgDicom 0..* MS and
    imgNonDicom 0..* MS

* item[diagnosis].item[imageStudy].item[imgItem].linkId = "4.4.1"
* item[diagnosis].item[imageStudy].item[imgItem].text = "diagnosis.imageStudy.imgItem|影像報告"
* item[diagnosis].item[imageStudy].item[imgItem].type = #choice
* item[diagnosis].item[imageStudy].item[imgItem].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/icd-10-pcs-2023-image"

* item[diagnosis].item[imageStudy].item[imgResult].linkId = "4.4.2"
* item[diagnosis].item[imageStudy].item[imgResult].text = "diagnosis.imageStudy.imgResult|影像報告結果"
* item[diagnosis].item[imageStudy].item[imgResult].type = #string

* item[diagnosis].item[imageStudy].item[imgDate].linkId = "4.4.3"
* item[diagnosis].item[imageStudy].item[imgDate].text = "diagnosis.imageStudy.imgDate|影像報告日期"
* item[diagnosis].item[imageStudy].item[imgDate].type = #date

* item[diagnosis].item[imageStudy].item[imgBodySite].linkId = "4.4.4"
* item[diagnosis].item[imageStudy].item[imgBodySite].text = "diagnosis.imageStudy.imgBodySite|影像檢查的身體部位"
* item[diagnosis].item[imageStudy].item[imgBodySite].type = #choice
* item[diagnosis].item[imageStudy].item[imgBodySite].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/body-site"

* item[diagnosis].item[imageStudy].item[imgDicom].linkId = "4.4.5"
* item[diagnosis].item[imageStudy].item[imgDicom].text = "diagnosis.imageStudy.imgDicom|DICOM影像"
* item[diagnosis].item[imageStudy].item[imgDicom].type = #group
* item[diagnosis].item[imageStudy].item[imgDicom].repeats = true

* item[diagnosis].item[imageStudy].item[imgDicom].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgDicom].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgDicom].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgDicom].item contains
    studyUid 1..1 MS and
    series 1..* MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].linkId = "4.4.5.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].text = "diagnosis.imageStudy.imgDicom.studyUid|整項影像檢查的識別碼"
* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].type = #string

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].linkId = "4.4.5.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].text = "diagnosis.imageStudy.imgDicom.series|每項影像檢查有一個或多個系列(series)的實例"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].type = #group
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].repeats = true

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item contains
    uid 1..1 MS and
    modality 1..1 MS and
    instance 1..* MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].linkId = "4.4.5.2.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].text = "diagnosis.imageStudy.imgDicom.series.uid|此系列的DICOM系列實例UID"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].type = #string

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].linkId = "4.4.5.2.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].text = "diagnosis.imageStudy.imgDicom.series.modality|此系列實例所使用的成像儀器"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].type = #choice
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].answerValueSet = "http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].linkId = "4.4.5.2.3"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].text = "diagnosis.imageStudy.imgDicom.series.instance|系列中的一個SOP實例"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].type = #group
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].repeats = true

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item contains
    uid 1..1 MS and
    sopClass 1..1 MS

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].linkId = "4.4.5.2.3.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].text = "diagnosis.imageStudy.imgDicom.series.instance.uid|DICOM影像"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].type = #string

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].linkId = "4.4.5.2.3.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].text = "diagnosis.imageStudy.imgDicom.series.instance.sopClass|DICOM class 類型"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].type = #choice
//* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].answerValueSet = "http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1"

* item[diagnosis].item[imageStudy].item[imgNonDicom].linkId = "4.4.6"
* item[diagnosis].item[imageStudy].item[imgNonDicom].text = "diagnosis.imageStudy.imgNonDicom|非DICOM影像"
* item[diagnosis].item[imageStudy].item[imgNonDicom].type = #group
* item[diagnosis].item[imageStudy].item[imgNonDicom].repeats = true

* item[diagnosis].item[imageStudy].item[imgNonDicom].item ^slicing.discriminator.type = #value
* item[diagnosis].item[imageStudy].item[imgNonDicom].item ^slicing.discriminator.path = "linkId"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item ^slicing.rules = #closed
* item[diagnosis].item[imageStudy].item[imgNonDicom].item contains
    imgNonDicom 1..1 MS and
    imgNonDicomMimeType	 1..1 MS

* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].linkId = "4.4.6.1"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].text = "diagnosis.imageStudy.imgNonDicom.imgNonDicom|非DICOM影像"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].type = #string

* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].linkId = "4.4.6.2"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].text = "diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType|非DICOM影像MimeType"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].type = #choice
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/media-mimetypes"


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
    //earlyStage 0..1 MS and
    //actualStage 0..1 MS and
    assessDate 0..1 MS

* item[cancerStage].item[cancerStage].linkId = "6.1"
* item[cancerStage].item[cancerStage].text = "cancerStage.cancerStage|癌症期別，醫院自行填入癌症期別(1~4)，若為不適用者填9(不適用)。"
* item[cancerStage].item[cancerStage].type = #choice
* item[cancerStage].item[cancerStage].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/cancer-stage"
* item[cancerStage].item[cancerStage].required = true

* item[cancerStage].item[assessScore].linkId = "6.2"
* item[cancerStage].item[assessScore].text = "cancerStage.assessScore|癌症分期分數或結果"
* item[cancerStage].item[assessScore].type = #string

/* item[cancerStage].item[earlyStage].linkId = "6.3"
* item[cancerStage].item[earlyStage].text = "cancerStage.earlyStage|初期癌症期別"
* item[cancerStage].item[earlyStage].type = #string

* item[cancerStage].item[actualStage].linkId = "6.4"
* item[cancerStage].item[actualStage].text = "cancerStage.actualStage|實際癌症期別"
* item[cancerStage].item[actualStage].type = #string*/

* item[cancerStage].item[assessDate].linkId = "6.3"
* item[cancerStage].item[assessDate].text = "cancerStage.assessDate|癌症分期量表評估日期，YYYY-MM-DD，西元年月日，民國前為負數。"
* item[cancerStage].item[assessDate].type = #date

* item[illness].linkId = "7"
* item[illness].text = "illness|惡性腫瘤重大傷病換發評估表"
* item[illness].type = #group

* item[illness].item ^slicing.discriminator.type = #value
* item[illness].item ^slicing.discriminator.path = "linkId"
* item[illness].item ^slicing.rules = #closed
* item[illness].item contains
    oriCancerCode 0..1 MS and
    oriCancerDxDate 0..1 MS and
    oriCancerAjcc 0..1 MS and
    oriCancerAjcc1 0..1 MS and
    cancerStatus 0..1 MS and
    cancerTreatment 0..1 MS and
    cancerTreatmentPlan 0..1 MS and
    cancerTreatmentText 0..1 MS


* item[illness].item[oriCancerCode].linkId = "7.1"
* item[illness].item[oriCancerCode].text = "illness.oriCancerCode|原發癌症診斷碼，最長為7碼。"
* item[illness].item[oriCancerCode].type = #choice
* item[illness].item[oriCancerCode].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-primary-cancer-icd"

* item[illness].item[oriCancerDxDate].linkId = "7.2"
* item[illness].item[oriCancerDxDate].text = "illness.oriCancerDxDate|癌症最初診斷日期，西元年月日；不得大於系統日。"
* item[illness].item[oriCancerDxDate].type = #date

* item[illness].item[oriCancerAjcc].linkId = "7.3"
* item[illness].item[oriCancerAjcc].text = "illness.oriCancerAjcc|癌症最初診斷AJCC分期(病理分期或未接受治療前的臨床分期)，依期別填入；若不是用此分類而用其他分類，則填寫9。"
* item[illness].item[oriCancerAjcc].type = #choice
* item[illness].item[oriCancerAjcc].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-cancerstaging"

* item[illness].item[oriCancerAjcc1].linkId = "7.4"
* item[illness].item[oriCancerAjcc1].text = "illness.oriCancerAjcc1|癌症最初診斷AJCC分期_補充說明欄位，若前述欄位為9，則請於此欄位描述其他系統之其他分期為何。"
* item[illness].item[oriCancerAjcc1].type = #string

* item[illness].item[cancerStatus].linkId = "7.5"
* item[illness].item[cancerStatus].text = "illness.cancerStatus|目前癌症狀態"
* item[illness].item[cancerStatus].type = #choice
//* item[illness].item[cancerStatus].required = true
* item[illness].item[cancerStatus].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-cancerstage-status"

* item[illness].item[cancerTreatment].linkId = "7.6"
* item[illness].item[cancerTreatment].text = "illness.cancerTreatment|後續治療評估，可複選。"
* item[illness].item[cancerTreatment].type = #choice
* item[illness].item[cancerTreatment].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-cancer-treatment"
* item[illness].item[cancerTreatment].repeats = true

* item[illness].item[cancerTreatmentPlan].linkId = "7.7"
* item[illness].item[cancerTreatmentPlan].text = "illness.cancerTreatmentPlan|後續治療計劃，可複選。"
* item[illness].item[cancerTreatmentPlan].type = #choice
* item[illness].item[cancerTreatmentPlan].answerValueSet = "https://nhicore.nhi.gov.tw/ci/ValueSet/nhi-cancer-treatment-plan"
* item[illness].item[cancerTreatmentPlan].repeats = true

* item[illness].item[cancerTreatmentText].linkId = "7.8"
* item[illness].item[cancerTreatmentText].text = "illness.cancerTreatmentText|補充說明。"
* item[illness].item[cancerTreatmentText].type = #string


* item.linkId ^short = "問卷題目編號"
* item.type ^short = "答題類型。group:組合題 ｜ date:日期 ｜ string:字串 ｜ integer:整數｜ choice:選擇｜ attachment:文件｜ text:文字"