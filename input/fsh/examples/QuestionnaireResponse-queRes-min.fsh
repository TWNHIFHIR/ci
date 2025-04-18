Instance: queRes-min
InstanceOf: QuestionnaireResponseTWCI
Title: "重大傷病申請書回覆"
Description: "依據重大傷病申請書回覆-QuestionnaireResponse TWCI Profile呈現重大傷病申請書回覆之範例"
Usage: #example

* questionnaire = "https://twcore.mohw.gov.tw/ig/ci/Questionnaire/apply-catastrophic-illness"
* status = #completed
* item[hosp].linkId = "1"
* item[hosp].text = "hosp|院所資訊"

* item[hosp].item[applType].linkId = "1.1"
* item[hosp].item[applType].text = "hosp.applType|申報方式，醫院報備固定為2。"
* item[hosp].item[applType].answer.valueCoding = NHICIReportingMethod#2 "院所代辦"

* item[hosp].item[applDate].linkId = "1.2" 
* item[hosp].item[applDate].text = "hosp.applDate|申請日期"
* item[hosp].item[applDate].answer.valueDate = "2024-01-01"

* item[hosp].item[medCertBookDate].linkId = "1.3" 
* item[hosp].item[medCertBookDate].text = "hosp.medCertBookDate|開立診斷書申請日期"
* item[hosp].item[medCertBookDate].answer.valueDate = "2025-04-08"

* item[hosp].item[hospId].linkId = "1.4" 
* item[hosp].item[hospId].text = "hosp.hospId|醫事機構代碼"
* item[hosp].item[hospId].answer.valueCoding = https://twcore.mohw.gov.tw/ig/ci/CodeSystem/organization-identifier-tw#0131060029 "衛生福利部臺北醫院"

* item[hosp].item[acptNo].linkId = "1.5" 
* item[hosp].item[acptNo].text = "hosp.acptNo|受理編號"
* item[hosp].item[acptNo].answer.valueString = "11218899999"

* item[hosp].item[acptNum].linkId = "1.6"
* item[hosp].item[acptNum].text = "hosp.acptNum|受理次數"
* item[hosp].item[acptNum].answer.valueInteger = 1


* item[patient].linkId = "2"
* item[patient].text = "patient|病人資訊"
* item[patient].answer.valueReference = Reference(Patient/pat-min)
/*
* item[illness].item[0].linkId = "2.1"
* item[illness].item[=].text = "patient.idCard|身分證字號"
* item[illness].item[=].definition = "被保險人國民身分證統一編號"
* item[illness].item[=].answer.valueString = "A123456789"

* item[illness].item[+].linkId = "2.2"
* item[illness].item[=].text = "patient.name|姓名"
* item[illness].item[=].answer.valueString = "王大明"

* item[illness].item[+].linkId = "2.3"
* item[illness].item[=].text = "patient.gender|性別"
* item[illness].item[=].definition = "male:男性|female:女性|other:其他|unknown:未知"
* item[illness].item[=].answer.valueCoding = AdministrativeGender#male

* item[illness].item[+].linkId = "2.4"
* item[illness].item[=].text = "patient.birthday|出生日期"
* item[illness].item[=].definition = "YYYY-MM-DD，西元年月日"
* item[illness].item[=].answer.valueDate = "2001-01-01"

* item[illness].item[+].linkId = "2.5"
* item[illness].item[=].text = "patient.postCode|郵遞區號"
* item[illness].item[=].answer.valueCoding = TWPostalCode3#106 "臺北市大安區"

* item[illness].item[+].linkId = "2.6"
* item[illness].item[=].text = "patient.address|連絡住址"
* item[illness].item[=].answer.valueString = "台北市大安區信義路三段140號"

* item[illness].item[+].linkId = "2.7"
* item[illness].item[=].text = "patient.mobilePhone|手機號碼"
* item[illness].item[=].definition = "應為數字10碼(寄送核發簡訊使用)"
* item[illness].item[=].answer.valueString = "0912345678"

* item[illness].item[+].linkId = "2.8"
* item[illness].item[=].text = "patient.phone|連絡電話"
* item[illness].item[=].answer.valueString = "0227065866"

* item[illness].item[+].linkId = "2.9"
* item[illness].item[=].text = "patient.email|電子郵件信箱"
* item[illness].item[=].answer.valueString = "a123456@nhi.gov.tw"
*/
* item[doctor].linkId = "3"
* item[doctor].text = "doctor|醫師資訊"

* item[doctor].item[diagPrsnId].linkId = "3.1"
* item[doctor].item[diagPrsnId].text = "doctor.diagPrsnId|醫師身分證號"
//* item[doctor].item[diagPrsnId].definition = "醫師國民身分證統一編號"
* item[doctor].item[diagPrsnId].answer.valueString = "A234649456"

* item[doctor].item[diagPrsnName].linkId = "3.2"
* item[doctor].item[diagPrsnName].text = "doctor.diagPrsnName|診斷醫師姓名"
* item[doctor].item[diagPrsnName].answer.valueString = "王小明"


* item[diagnosis].linkId = "4"
* item[diagnosis].text = "diagnosis|疾病資訊"

* item[diagnosis].item[icd10cmCode].linkId = "4.1"
* item[diagnosis].item[icd10cmCode].text = "diagnosis.icd10cmCode|主診斷代碼"
* item[diagnosis].item[icd10cmCode].answer.valueCoding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#C49.6 "軀幹結締及軟組織之惡性腫瘤"

/* item[diagnosis].item[diagName].linkId = "4.2"
* item[diagnosis].item[diagName].text = "diagnosis.diagName|主診斷病名"
* item[diagnosis].item[diagName].answer.valueString = "軀幹結締及軟組織之惡性腫瘤"*/

* item[diagnosis].item[examinationReport].linkId = "4.2"
* item[diagnosis].item[examinationReport].text = "diagnosis.examinationReport|檢查報告"

* item[diagnosis].item[examinationReport].item[reportType].linkId = "4.2.1"
* item[diagnosis].item[examinationReport].item[reportType].text = "diagnosis.examinationReport.reportType|報告類型"
* item[diagnosis].item[examinationReport].item[reportType].answer[0].valueCoding = http://loinc.org#66117-3
* item[diagnosis].item[examinationReport].item[reportType].answer[+].valueCoding = http://loinc.org#66114-0

* item[diagnosis].item[examinationReport].item[speType].linkId = "4.2.2"
* item[diagnosis].item[examinationReport].item[speType].text = "diagnosis.examinationReport.speType|檢體種類"
* item[diagnosis].item[examinationReport].item[speType].answer.valueString = "Prostate ; Stomach"

* item[diagnosis].item[examinationReport].item[reportResultString].linkId = "4.2.3"
* item[diagnosis].item[examinationReport].item[reportResultString].text = "diagnosis.examinationReport.reportResultString|報告結果-文數字"
* item[diagnosis].item[examinationReport].item[reportResultString].answer.valueString = "Prostate labeled as lesion 1 magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate labeled as lesion 2 magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate right lateral magnetic resonance-ultrasound fusion biopsy prostatic intraepithelial neoplasia high-gradeProstate right medial magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate left medial magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate left lateral magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+4=7MACROSCOPYSites of biopsy: A. Lesion 1 (left anterior midgland TZ): 3 cores (length: up to 2.1 cm) B. Lesion 2 (right anterior apex TZ): 3 cores (length: up to 2.0 cm) C. Right lateral: 3 cores (length: up to 1.8 cm) D. Right medial: 3 cores (length: up to 1.5 cm) E. Left medial: 3 cores (length: up to 1.4 cm) F. Left lateral: 3 cores (length: up to 1.2 cm)All for section and labeled as: A1 to F1. Jar 0MICROSCOPY1. Histologic diagnosis: A. Lesion 1: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 90% 70% 60% * Maximum cancer core length: 9.8 mm B. Lesion 2: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 40% 25% 5% C. Right lateral: high-grade prostatic intraepithelial neoplasia (PIN unifocal) D. Right medial: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 20% 0% 0% E. Left medial: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 40% 40% 0% F. Left lateral: adenocarcinoma * Gleason score: 3+4=7 (Grade group: 2) * Percentage of pattern 4 component: less than 5% * Area percentages of tumor part: 100% 5% 5%2. Perineural invasion: not identified3. Extraprostatic extension: not identified4. Seminal vesicle invasion: seminal vesicle not includedStomach middle to upper body lesser curvature anterior wall endoscopic biopsy     (1) extranodal marginal zone lymphoma of mucosa-associated lymphoid tissue            (MALT lymphoma)      (2) chronic active gastritis with Helicobacter infection      (3) intestinal metaplasiaStomach antrum lesser curvature and greater curvature endoscopic biopsy     (1) chronic gastritis without Helicobacter infection      (2) intestinal metaplasiaStomach mid-body lesser curvature and greater curvature endoscopic biopsy      (1) chronic gastritis with Helicobacter infection      (2) intestinal metaplasia     The specimen is submitted in 3 separated bottles labeled as A B and C respectively fixed in formalin.     The specimen A consists of two tissue fragments measuring up to 0.4 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft.        The specimen B consists of two tissue fragments measuring up to 0.3 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft.      The specimen C consists of 3 tissue fragments measuring up to 0.3 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft.           All for section and labeled as."

* item[diagnosis].item[examinationReport].item[reportResultPdf].linkId = "4.2.4"
* item[diagnosis].item[examinationReport].item[reportResultPdf].text = "diagnosis.examinationReport.reportResultPdf|檢查報告，請填寫完整檔案路徑。填寫格式：「file://檔名.副檔名」。"
* item[diagnosis].item[examinationReport].item[reportResultPdf].answer.valueString = "file://PathologyReport01.pdf"

* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].linkId = "4.2.5"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].text = "diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱"
* item[diagnosis].item[examinationReport].item[reportResultPdfTitle].answer.valueString = "PathologyReport01"

* item[diagnosis].item[examinationReport].item[reportDate].linkId = "4.2.6"
* item[diagnosis].item[examinationReport].item[reportDate].text = "diagnosis.examinationReport.reportDate|報告日期，YYYY-MM-DD。"
* item[diagnosis].item[examinationReport].item[reportDate].answer.valueDate = "2024-01-01"

* item[diagnosis].item[medrec].linkId = "4.3"
* item[diagnosis].item[medrec].text = "diagnosis.medrec|病歷資料"

* item[diagnosis].item[medrec].item[medrec].linkId = "4.3.1"
* item[diagnosis].item[medrec].item[medrec].text = "diagnosis.medrec.medrec|病歷資料"
* item[diagnosis].item[medrec].item[medrec].answer.valueString = "file://Medicalrecord01.pdf"

* item[diagnosis].item[medrec].item[medrecTitle].linkId = "4.3.2"
* item[diagnosis].item[medrec].item[medrecTitle].text = "diagnosis.medrec.medrecTitle|病歷資料名稱"
* item[diagnosis].item[medrec].item[medrecTitle].answer.valueString = "Medicalrecord01"

* item[diagnosis].item[imageStudy].linkId = "4.4"
* item[diagnosis].item[imageStudy].text = "diagnosis.imageStudy|影像報告"

* item[diagnosis].item[imageStudy].item[imgItem].linkId = "4.4.1"
* item[diagnosis].item[imageStudy].item[imgItem].text = "diagnosis.imageStudy.imgItem|影像報告"
* item[diagnosis].item[imageStudy].item[imgItem].answer.valueCoding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw#B34JZZ3

* item[diagnosis].item[imageStudy].item[imgResult].linkId = "4.4.2"
* item[diagnosis].item[imageStudy].item[imgResult].text = "diagnosis.imageStudy.imgResult|影像報告結果"
* item[diagnosis].item[imageStudy].item[imgResult].answer.valueString = "CT of Chest with contrast enhancement shows: COMPARISON: 2023-12-13. FINDINGS: - placement of a right port-A catheter. - a small(＜=6mm) perifissural nodule in right minor lung fissure(SE2 IM66) larger. - small pleural nodules at RUL and LUL up to 1.1cm in apical RUL larger. - no pleural effusion. - no definite mediastinal lymphadenopathy. - some mixed increased and decreased densities at the vertebral bodies of thoracolumbar spines; partial collapse of L5 vertebral body stable. 1. A small perifissural nodule in right minor lung fissure larger. 2. Small pleural nodules at RUL and LUL up to 1.1cm in apical RUL larger. 2. Bone metastases."

* item[diagnosis].item[imageStudy].item[imgDate].linkId = "4.4.3"
* item[diagnosis].item[imageStudy].item[imgDate].text = "diagnosis.imageStudy.imgDate|影像報告日期"
* item[diagnosis].item[imageStudy].item[imgDate].answer.valueDate = "2024-01-01"

* item[diagnosis].item[imageStudy].item[imgBodySite].linkId = "4.4.4"
* item[diagnosis].item[imageStudy].item[imgBodySite].text = "diagnosis.imageStudy.imgBodySite|影像檢查的身體部位"
* item[diagnosis].item[imageStudy].item[imgBodySite].answer.valueCoding = http://snomed.info/sct#774007 "Head and neck structure"

* item[diagnosis].item[imageStudy].item[imgDicom].linkId = "4.4.5"
* item[diagnosis].item[imageStudy].item[imgDicom].text = "diagnosis.imageStudy.imgDicom|DICOM影像"

* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].linkId = "4.4.5.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].text = "diagnosis.imageStudy.imgDicom.studyUid|整項影像檢查的識別碼"
* item[diagnosis].item[imageStudy].item[imgDicom].item[studyUid].answer.valueString = "urn:oid:2.16.886.2102.54.4546465747.465465465"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].linkId = "4.4.5.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].text = "diagnosis.imageStudy.imgDicom.series|每項影像檢查有一個或多個系列(series)的實例"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].linkId = "4.4.5.2.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].text = "diagnosis.imageStudy.imgDicom.series.uid|此系列的DICOM系列實例UID"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[uid].answer.valueString = "2.16.886.2102.54.4546465747.465465466"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].linkId = "4.4.5.2.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].text = "diagnosis.imageStudy.imgDicom.series.modality|此系列實例所使用的成像儀器"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[modality].answer.valueCoding = http://dicom.nema.org/resources/ontology/DCM#CT

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].linkId = "4.4.5.2.3"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].text = "diagnosis.imageStudy.imgDicom.series.instance|系列中的一個SOP實例"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].linkId = "4.4.5.2.3.1"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].text = "diagnosis.imageStudy.imgDicom.series.instance.uid|DICOM影像"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[uid].answer.valueString = "2.25.88017001449189502323411118737039844241"

* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].linkId = "4.4.5.2.3.2"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].text = "diagnosis.imageStudy.imgDicom.series.instance.sopClass|DICOM class 類型"
* item[diagnosis].item[imageStudy].item[imgDicom].item[series].item[instance].item[sopClass].answer.valueCoding = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2

* item[diagnosis].item[imageStudy].item[imgNonDicom].linkId = "4.4.6"
* item[diagnosis].item[imageStudy].item[imgNonDicom].text = "diagnosis.imageStudy.imgNonDicom|非DICOM影像"

* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].linkId = "4.4.6.1"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].text = "diagnosis.imageStudy.imgNonDicom.imgNonDicom|非DICOM影像"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicom].answer.valueString = "file://US01.jpg"

* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].linkId = "4.4.6.2"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].text = "diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType|非DICOM影像MimeType"
* item[diagnosis].item[imageStudy].item[imgNonDicom].item[imgNonDicomMimeType].answer.valueCoding = urn:ietf:bcp:13#image/jpeg


* item[ci].linkId = "5"
* item[ci].text = "ci|重大傷病"
* item[ci].answer.valueReference = Reference(Condition/con-min)
/*
* item[illness].item[0].linkId = "5.1"
* item[illness].item[=].text = "ci.hvType|重大傷病類別"
* item[illness].item[=].definition = "重大傷病申請僅限申請#1癌症"
* item[illness].item[=].answer.valueCoding = NHICICategory#1 "癌症"
*/
* item[cancerStage].linkId = "6"
* item[cancerStage].text = "cancerStage|癌症期別"

* item[cancerStage].item[cancerStage].linkId = "6.1"
* item[cancerStage].item[cancerStage].text = "cancerStage.cancerStage|癌症期別，醫院自行填入癌症期別(1~4)，若為不適用者填9(不適用)。"
* item[cancerStage].item[cancerStage].answer.valueCoding = CancerStage#1 "第一期"

* item[cancerStage].item[assessScore].linkId = "6.2"
* item[cancerStage].item[assessScore].text = "cancerStage.assessScore|癌症分期分數或結果"
* item[cancerStage].item[assessScore].answer.valueString = "T1"

* item[cancerStage].item[earlyStage].linkId = "6.3"
* item[cancerStage].item[earlyStage].text = "cancerStage.earlyStage|初期癌症期別"
* item[cancerStage].item[earlyStage].answer.valueString = "T1"

* item[cancerStage].item[actualStage].linkId = "6.4"
* item[cancerStage].item[actualStage].text = "cancerStage.actualStage|實際癌症期別"
* item[cancerStage].item[actualStage].answer.valueString = "T1"

* item[cancerStage].item[assessDate].linkId = "6.5"
* item[cancerStage].item[assessDate].text = "cancerStage.assessDate|癌症分期量表評估日期，YYYY-MM-DD，西元年月日，民國前為負數。"
* item[cancerStage].item[assessDate].answer.valueDate = "2024-01-01"


* item[illness].linkId = "7"
* item[illness].text = "illness|惡性腫瘤重大傷病換發評估表"

* item[illness].item[oriCancerCode].linkId = "7.1"
* item[illness].item[oriCancerCode].text = "illness.oriCancerCode|原發癌症診斷碼，最長為7碼。"
* item[illness].item[oriCancerCode].answer.valueCoding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#C49.4 "腹(部)結締及軟組織之惡性腫瘤"

* item[illness].item[oriCancerDxDate].linkId = "7.2"
* item[illness].item[oriCancerDxDate].text = "illness.oriCancerDxDate|癌症最初診斷日期，西元年月日；不得大於系統日。"
* item[illness].item[oriCancerDxDate].answer.valueDate = "2017-03-16"

* item[illness].item[oriCancerAjcc].linkId = "7.3"
* item[illness].item[oriCancerAjcc].text = "illness.oriCancerAjcc|癌症最初診斷AJCC分期(病理分期或未接受治療前的臨床分期)，依期別填入；若不是用此分類而用其他分類，則填寫9。"
* item[illness].item[oriCancerAjcc].answer.valueCoding = CancerStaging#9

* item[illness].item[oriCancerAjcc1].linkId = "7.4"
* item[illness].item[oriCancerAjcc1].text = "illness.oriCancerAjcc1|癌症最初診斷AJCC分期_補充說明欄位，若前述欄位為9，則請於此欄位描述其他系統之其他分期為何。"
* item[illness].item[oriCancerAjcc1].answer.valueString = "T1"

* item[illness].item[cancerStatus].linkId = "7.5"
* item[illness].item[cancerStatus].text = "illness.cancerStatus|目前癌症狀態"
* item[illness].item[cancerStatus].answer.valueCoding = CancerStageStatus#4 "癌症遠端轉移"

* item[illness].item[cancerTreatment].linkId = "7.6"
* item[illness].item[cancerTreatment].text = "illness.cancerTreatment|後續治療評估，可複選。"
* item[illness].item[cancerTreatment].answer[0].valueCoding = CancerStageAssessment#1 "手術治療"
* item[illness].item[cancerTreatment].answer[+].valueCoding = CancerStageAssessment#4 "標靶治療"

/*
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-QuestionnaireResponse-twci.html\">重大傷病申請書回覆-QuestionnaireResponse TWCI</a></p>
    </div>
    <table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px;
        font-family: verdana; vertical-align: top;\">
        <tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\">
            <th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a
                    href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th>
            <th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a
                    href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th>
            <th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a
                    href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item
                    can appear in the instance\">Definition</a></th>
            <th style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a
                    href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span
                    style=\"float: right\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this
                        format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\"
                            alt=\"doco\" style=\"background-color: inherit\" /></a></span></th>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\">
                <img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\" /><img
                    src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\"
                    title=\"QuestionnaireResponseRoot\" class=\"hierarchy\" /> queRes-min
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"></td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"></td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a
                    href=\"Questionnaire-apply-catastrophic-illness.html\">Catastrophic-Illness-Form</a></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp|院所資訊</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.applType|申報方式</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a
                            href=\"CodeSystem-nhi-reporting-method.html#nhi-reporting-method-2\">NHI-申報方式類別 2</a>:
                        院所代辦</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.applDate|申請日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2024-01-01</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.medCertBookDate|開立診斷書申請日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2025-02-18</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.hospId|醫事機構代碼</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a
                            href=\"CodeSystem-organization-identifier-tw.html#organization-identifier-tw-0131060029\">NHI-特約醫事機構
                            0131060029</a>: 衛生福利部臺北醫院</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.acptNo|受理編號</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">11218899999</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.6</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.acptNum|受理次數</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">1</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">patient|病人資訊</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"Patient-pat-min.html\">Patient/pat-min</a></span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">doctor|醫師資訊</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 3.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">doctor.diagPrsnId|醫師身分證號</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">A234649456</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 3.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">doctor.diagPrsnName|診斷醫師姓名</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">王小明</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis|疾病資訊</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.icd10cmCode|主診斷代碼</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/CodeSystem-icd-10-cm-2023-tw.html#icd-10-cm-2023-tw-A01.4603\">臺灣健保署2023年中文版ICD-10-CM C49.6</a>: 軀幹結締及軟組織之惡性腫瘤</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport|檢查報告</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportType|報告類型</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" ><span><span><a href=\"ValueSet-loinc-report-type.html\">LOINC 66117-3</a>: Prostate Pathology biopsy report；<a href=\"ValueSet-loinc-report-type.html\">LOINC 66114-0</a>: Stomach Pathology biopsy report</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.speType|檢體種類</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">Prostate ; Stomach</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportResultString|報告結果-文數字
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">Prostate labeled as lesion 1 magnetic resonance-ultrasound
                fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate labeled as lesion 2 magnetic
                resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate right lateral magnetic
                resonance-ultrasound fusion biopsy prostatic intraepithelial neoplasia high-gradeProstate right medial
                magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate left medial
                magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate left lateral
                magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+4=7MACROSCOPYSites of biopsy:
                A. Lesion 1 (left anterior midgland TZ): 3 cores (length: up to 2.1 cm) B. Lesion 2 (right anterior apex
                TZ): 3 cores (length: up to 2.0 cm) C. Right lateral: 3 cores (length: up to 1.8 cm) D. Right medial: 3
                cores (length: up to 1.5 cm) E. Left medial: 3 cores (length: up to 1.4 cm) F. Left lateral: 3 cores
                (length: up to 1.2 cm)All for section and labeled as: A1 to F1. Jar 0MICROSCOPY1. Histologic diagnosis:
                A. Lesion 1: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part:
                90% 70% 60% * Maximum cancer core length: 9.8 mm B. Lesion 2: adenocarcinoma * Gleason score: 3+3=6
                (Grade group: 1) * Area percentages of tumor part: 40% 25% 5% C. Right lateral: high-grade prostatic
                intraepithelial neoplasia (PIN unifocal) D. Right medial: adenocarcinoma * Gleason score: 3+3=6 (Grade
                group: 1) * Area percentages of tumor part: 20% 0% 0% E. Left medial: adenocarcinoma * Gleason score:
                3+3=6 (Grade group: 1) * Area percentages of tumor part: 40% 40% 0% F. Left lateral: adenocarcinoma *
                Gleason score: 3+4=7 (Grade group: 2) * Percentage of pattern 4 component: less than 5% * Area
                percentages of tumor part: 100% 5% 5%2. Perineural invasion: not identified3. Extraprostatic extension:
                not identified4. Seminal vesicle invasion: seminal vesicle not includedStomach middle to upper body
                lesser curvature anterior wall endoscopic biopsy (1) extranodal marginal zone lymphoma of
                mucosa-associated lymphoid tissue (MALT lymphoma) (2) chronic active gastritis with Helicobacter
                infection (3) intestinal metaplasiaStomach antrum lesser curvature and greater curvature endoscopic
                biopsy (1) chronic gastritis without Helicobacter infection (2) intestinal metaplasiaStomach mid-body
                lesser curvature and greater curvature endoscopic biopsy (1) chronic gastritis with Helicobacter
                infection (2) intestinal metaplasia The specimen is submitted in 3 separated bottles labeled as A B and
                C respectively fixed in formalin. The specimen A consists of two tissue fragments measuring up to 0.4 x
                0.2 x 0.2 cm in size. Grossly they are gray-white and soft. The specimen B consists of two tissue
                fragments measuring up to 0.3 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft. The specimen
                C consists of 3 tissue fragments measuring up to 0.3 x 0.2 x 0.2 cm in size. Grossly they are gray-white
                and soft. All for section and labeled as.</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportResultPdf|檢查報告</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">file://PathologyReport01.pdf</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">PathologyReport01</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1000.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.6</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportDate|報告日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2024-01-01</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">ci|重大傷病</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"Condition-con-min.html\">Condition/con-min</a></span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 6</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage|癌症期別</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 6.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage.cancerStage|癌症期別</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a
                            href=\"CodeSystem-cancer-stage.html#cancer-stage-1\">NHI-癌症期別 1</a>: 第一期</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 6.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage.assessScore|癌症分期分數或結果</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">T1</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 6.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage.earlyStage|初期癌症期別</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">T1</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 6.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage.actualStage|實際癌症期別</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">T1</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 6.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage.assessDate|癌症分期量表評估日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2024-01-01</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 7</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness|惡性腫瘤重大傷病換發評估表</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 7.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness.oriCancerCode|原發癌症診斷碼</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a
                            href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/CodeSystem-icd-10-cm-2023-tw.html#icd-10-cm-2023-tw-C49.464\">臺灣健保署2023年中文版ICD-10-CM
                            C49.4</a>: 腹(部)結締及軟組織之惡性腫瘤</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 7.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness.oriCancerDxDate|癌症最初診斷日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2017-03-16</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 7.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness.oriCancerAjcc|癌症最初診斷AJCC分期(病理分期或未接受治療前的臨床分期)</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a
                            href=\"CodeSystem-nhi-cancerstaging.html#nhi-cancerstaging-9\">NHI-後續治療評估 9</a>:
                        其他系統</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 7.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness.oriCancerAjcc1|癌症最初診斷AJCC分期_補充說明欄位</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">T1</td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 7.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness.cancerStatus|目前癌症狀態</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a
                            href=\"CodeSystem-nhi-cancerstage-status.html#nhi-cancerstage-status-4\">NHI-癌症狀態 4</a>:
                        癌症遠端轉移</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 7.6</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">illness.cancerTreatment|後續治療評估</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"CodeSystem-nhi-cancerstage-cancerTreatment.html\">NHI-後續治療評估 1</a>: 手術治療<br /><a href=\"CodeSystem-nhi-cancerstage-cancerTreatment.html\">NHI-後續治療評估 4</a>: 標靶治療</span></span></td>
        </tr>
        <tr>
            <td colspan=\"4\" class=\"hierarchy\"><br /><a href=\"http://hl7.org/fhir/R4/formats.html#table\"
                    title=\"Legend for this format\"><img
                        src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\"
                        alt=\"doco\" style=\"background-color: inherit\" /> Documentation for this format</a></td>
        </tr>
    </table>
</div>"*/