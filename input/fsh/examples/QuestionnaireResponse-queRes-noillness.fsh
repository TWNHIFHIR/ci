Instance: queRes-noillness
InstanceOf: QuestionnaireResponseTWCI
Title: "重大傷病申請書回覆(無換發評估表)"
Description: "依據重大傷病申請書回覆-QuestionnaireResponse TWCI Profile呈現重大傷病申請書回覆(無換發評估表)之範例"
Usage: #example

* questionnaire = "https://nhicore.nhi.gov.tw/ci/Questionnaire/apply-catastrophic-illness"
* status = #completed
* item[hosp].linkId = "1"
* item[hosp].text = "hosp|院所資訊"

* item[hosp].item[applMode].linkId = "1.1"
* item[hosp].item[applMode].text = "hosp.applMode|申報方式"
* item[hosp].item[applMode].answer.valueCoding = NHICIApplyModeCodes#2 "院所代辦"

* item[hosp].item[applType].linkId = "1.2"
* item[hosp].item[applType].text = "hosp.applType|申報類別"
* item[hosp].item[applType].answer.valueCoding = NHICIApplyTypeCodes#1 "送核"

* item[hosp].item[applDate].linkId = "1.3" 
* item[hosp].item[applDate].text = "hosp.applDate|申請日期"
* item[hosp].item[applDate].answer.valueDate = "2024-01-01"

* item[hosp].item[medCertBookDate].linkId = "1.4" 
* item[hosp].item[medCertBookDate].text = "hosp.medCertBookDate|開立診斷書申請日期"
* item[hosp].item[medCertBookDate].answer.valueDate = "2025-10-28"

* item[hosp].item[hospId].linkId = "1.5" 
* item[hosp].item[hospId].text = "hosp.hospId|醫事機構代碼"
* item[hosp].item[hospId].answer.valueCoding = https://nhicore.nhi.gov.tw/ci/CodeSystem/organization-identifier-tw#0131060029 "衛生福利部臺北醫院"

* item[hosp].item[acptNo].linkId = "1.6" 
* item[hosp].item[acptNo].text = "hosp.acptNo|受理編號"
* item[hosp].item[acptNo].answer.valueString = "11218899999"

* item[hosp].item[acptNum].linkId = "1.7"
* item[hosp].item[acptNum].text = "hosp.acptNum|受理次數"
* item[hosp].item[acptNum].answer.valueInteger = 1


* item[patient].linkId = "2"
* item[patient].text = "patient|病人資訊"
* item[patient].answer.valueReference = Reference(Patient/pat-min)

* item[doctor].linkId = "3"
* item[doctor].text = "doctor|醫師資訊"

* item[doctor].item[diagPrsnId].linkId = "3.1"
* item[doctor].item[diagPrsnId].text = "doctor.diagPrsnId|醫師身分證號"

* item[doctor].item[diagPrsnId].answer.valueString = "A234649456"

* item[doctor].item[diagPrsnName].linkId = "3.2"
* item[doctor].item[diagPrsnName].text = "doctor.diagPrsnName|診斷醫師姓名"
* item[doctor].item[diagPrsnName].answer.valueString = "王小明"

* item[diagnosis].linkId = "4"
* item[diagnosis].text = "diagnosis|疾病資訊"

* item[diagnosis].item[icd10cmCode].linkId = "4.1"
* item[diagnosis].item[icd10cmCode].text = "diagnosis.icd10cmCode|主診斷代碼"
* item[diagnosis].item[icd10cmCode].answer.valueCoding = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw#C49.6 "軀幹結締及軟組織之惡性腫瘤"

* item[diagnosis].item[examinationReport].linkId = "4.2"
* item[diagnosis].item[examinationReport].text = "diagnosis.examinationReport|檢查報告"

* item[diagnosis].item[examinationReport].item[reportType].linkId = "4.2.1"
* item[diagnosis].item[examinationReport].item[reportType].text = "diagnosis.examinationReport.reportType|報告類型。當LOINC無法具體描述檢體種類（例如：`47526-9`時），請填寫及補充說明檢體種類。"
* item[diagnosis].item[examinationReport].item[reportType].answer[0].valueCoding = http://loinc.org#66117-3

* item[diagnosis].item[examinationReport].item[speType].linkId = "4.2.2"
* item[diagnosis].item[examinationReport].item[speType].text = "diagnosis.examinationReport.speType|檢體種類"
* item[diagnosis].item[examinationReport].item[speType].answer.valueString = "Prostate ; Stomach"

* item[diagnosis].item[examinationReport].item[reportResultString].linkId = "4.2.3"
* item[diagnosis].item[examinationReport].item[reportResultString].text = "diagnosis.examinationReport.reportResultString|報告結果-文數字"
* item[diagnosis].item[examinationReport].item[reportResultString].answer.valueString = "Prostate labeled as lesion 1 magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate labeled as lesion 2 magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate right lateral magnetic resonance-ultrasound fusion biopsy prostatic intraepithelial neoplasia high-gradeProstate right medial magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate left medial magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+3=6Prostate left lateral magnetic resonance-ultrasound fusion biopsy adenocarcinoma Gleason score 3+4=7MACROSCOPYSites of biopsy: A. Lesion 1 (left anterior midgland TZ): 3 cores (length: up to 2.1 cm) B. Lesion 2 (right anterior apex TZ): 3 cores (length: up to 2.0 cm) C. Right lateral: 3 cores (length: up to 1.8 cm) D. Right medial: 3 cores (length: up to 1.5 cm) E. Left medial: 3 cores (length: up to 1.4 cm) F. Left lateral: 3 cores (length: up to 1.2 cm)All for section and labeled as: A1 to F1. Jar 0MICROSCOPY1. Histologic diagnosis: A. Lesion 1: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 90% 70% 60% * Maximum cancer core length: 9.8 mm B. Lesion 2: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 40% 25% 5% C. Right lateral: high-grade prostatic intraepithelial neoplasia (PIN unifocal) D. Right medial: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 20% 0% 0% E. Left medial: adenocarcinoma * Gleason score: 3+3=6 (Grade group: 1) * Area percentages of tumor part: 40% 40% 0% F. Left lateral: adenocarcinoma * Gleason score: 3+4=7 (Grade group: 2) * Percentage of pattern 4 component: less than 5% * Area percentages of tumor part: 100% 5% 5%2. Perineural invasion: not identified3. Extraprostatic extension: not identified4. Seminal vesicle invasion: seminal vesicle not includedStomach middle to upper body lesser curvature anterior wall endoscopic biopsy     (1) extranodal marginal zone lymphoma of mucosa-associated lymphoid tissue            (MALT lymphoma)      (2) chronic active gastritis with Helicobacter infection      (3) intestinal metaplasiaStomach antrum lesser curvature and greater curvature endoscopic biopsy     (1) chronic gastritis without Helicobacter infection      (2) intestinal metaplasiaStomach mid-body lesser curvature and greater curvature endoscopic biopsy      (1) chronic gastritis with Helicobacter infection      (2) intestinal metaplasia     The specimen is submitted in 3 separated bottles labeled as A B and C respectively fixed in formalin.     The specimen A consists of two tissue fragments measuring up to 0.4 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft.        The specimen B consists of two tissue fragments measuring up to 0.3 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft.      The specimen C consists of 3 tissue fragments measuring up to 0.3 x 0.2 x 0.2 cm in size. Grossly they are gray-white and soft.           All for section and labeled as."

* item[diagnosis].item[examinationReport].item[reportResultPdf].linkId = "4.2.4"
* item[diagnosis].item[examinationReport].item[reportResultPdf].text = "diagnosis.examinationReport.reportResultPdf|檢查報告檔案，請填寫完整檔案路徑。填寫格式：「file://檔名.副檔名」。"
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

* item[cancerStage].linkId = "6"
* item[cancerStage].text = "cancerStage|癌症期別"

* item[cancerStage].item[cancerStage].linkId = "6.1"
* item[cancerStage].item[cancerStage].text = "cancerStage.cancerStage|癌症期別，醫院自行填入癌症期別(1~4)，若為不適用者填9(不適用)。"
* item[cancerStage].item[cancerStage].answer.valueCoding = CancerStageCodes#1 "第一期"

* item[cancerStage].item[assessScore].linkId = "6.2"
* item[cancerStage].item[assessScore].text = "cancerStage.assessScore|癌症分期分數或結果"
* item[cancerStage].item[assessScore].answer.valueString = "T1"

* item[cancerStage].item[assessDate].linkId = "6.3"
* item[cancerStage].item[assessDate].text = "cancerStage.assessDate|癌症分期量表評估日期，YYYY-MM-DD，西元年月日，民國前為負數。"
* item[cancerStage].item[assessDate].answer.valueDate = "2024-01-01"

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
                        format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\" /></a></span></th>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\">
                <img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\" /><img
                    src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\"
                    title=\"QuestionnaireResponseRoot\" class=\"hierarchy\" /> queRes-min</td>
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
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.applMode|申報方式</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"CodeSystem-nhi-apply-type.html#nhi-apply-type-1\">NHI-健保重大傷病-申報方式 2</a>: 院所代辦</span></span></td>
        </tr>
        <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.applType|申報類別</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"CodeSystem-nhi-apply-type.html#nhi-apply-type-1\">NHI-健保重大傷病-申報類別 1</a>: 送核</span></span></td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.3</td>
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
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.medCertBookDate|開立診斷書申請日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2025-10-20</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">hosp.hospId|醫事機構代碼</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"CodeSystem-organization-identifier-tw.html#organization-identifier-tw-0131060029\">NHI-健保重大傷病-特約醫事機構 0131060029</a>: 衛生福利部臺北醫院</span></span></td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.6</td>
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
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 1.7</td>
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
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"Patient-pat-min.html\">Patient/pat-min</a></span></span>
            </td>
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
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/ValueSet-icd-10-cm-2023-tw.html#icd-10-cm-2023-tw-C49.466\">臺灣健保署2023年中文版ICD-10-CM C49.6</a>: 軀幹結締及軟組織之惡性腫瘤</span></span></td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck111.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport|檢查報告</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                diagnosis.examinationReport.reportType|報告類型。當LOINC無法具體描述檢體種類（例如：`47526-9`時），請填寫及補充說明檢體種類。</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" ><span><a href=\"ValueSet-loinc-report-type.html\">LOINC 66117-3</a>: Prostate Pathology biopsy report</span></td>
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.speType|檢體種類</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">Prostate ; Stomach</td>
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportResultString|報告結果-文數字
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
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
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                diagnosis.examinationReport.reportResultPdf|檢查報告檔案，請填寫完整檔案路徑。填寫格式：「file://檔名.副檔名」。</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">file://PathologyReport01.pdf</td>
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportResultPdfTitle|檢查報告名稱
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">PathologyReport01</td>
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1100.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.2.6</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.examinationReport.reportDate|報告日期，YYYY-MM-DD。
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2024-01-01</td>
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck111.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.medrec|病歷資料</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.3.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.medrec.medrec|病歷資料</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">file://Medicalrecord01.pdf</td>
        </tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1100.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.3.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.medrec.medrecTitle|病歷資料名稱</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">Medicalrecord01</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy|影像報告</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr> 
 <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgItem|影像報告</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"https://twcore.mohw.gov.tw/ig/twcore/0.3.2/ValueSet-icd-10-pcs-2023-tw.html#icd-10-pcs-2023-tw-B34JZZ3\">臺灣健保署2023年中文版ICD-10-PCS B34JZZ3</a>: 左上肢動脈血管內超音波</span></span></td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgResult|影像報告結果</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">CT of Chest with contrast enhancement shows: COMPARISON:
                2023-12-13. FINDINGS: - placement of a right port-A catheter. - a small(＜=6mm) perifissural nodule in
                right minor lung fissure(SE2 IM66) larger. - small pleural nodules at RUL and LUL up to 1.1cm in apical
                RUL larger. - no pleural effusion. - no definite mediastinal lymphadenopathy. - some mixed increased and
                decreased densities at the vertebral bodies of thoracolumbar spines; partial collapse of L5 vertebral
                body stable. 1. A small perifissural nodule in right minor lung fissure larger. 2. Small pleural nodules
                at RUL and LUL up to 1.1cm in apical RUL larger. 2. Bone metastases.</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgDate|影像報告日期</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2024-01-01</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.4</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgBodySite|影像檢查的身體部位</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"http://snomed.info/id/774007\">SNOMED CT 774007</a>: Head and neck
                        structure</span></span></td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1011.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.4.5</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgDicom|DICOM影像</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10110.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.5.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgDicom.studyUid|整項影像檢查的識別碼</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">urn:oid:2.16.886.2102.54.4546465747.465465465</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10101.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.4.5.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                diagnosis.imageStudy.imgDicom.series|每項影像檢查有一個或多個系列(series)的實例</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.5.2.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgDicom.series.uid|此系列的DICOM系列實例UID
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2.16.886.2102.54.4546465747.465465466</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.5.2.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                diagnosis.imageStudy.imgDicom.series.modality|此系列實例所使用的成像儀器</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span>DICOM CT: Computed Tomography</span></span>
            </td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101001.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.4.5.2.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgDicom.series.instance|系列中的一個SOP實例
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.5.2.3.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgDicom.series.instance.uid|DICOM影像
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2.25.88017001449189502323411118737039844241</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010000.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.5.2.3.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                diagnosis.imageStudy.imgDicom.series.instance.sopClass|DICOM class 類型</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span>unknown urn:oid:1.2.840.10008.5.1.4.1.1.2:
                        urn:oid:1.2.840.10008.5.1.4.1.1.2</span></span></td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1001.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-group.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Group\" class=\"hierarchy\" /> 4.4.6</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgNonDicom|非DICOM影像</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\">
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10010.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.6.1</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">diagnosis.imageStudy.imgNonDicom.imgNonDicom|非DICOM影像</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">file://US01.jpg</td>
        </tr>
         <tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\">
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10000.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 4.4.6.2</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                diagnosis.imageStudy.imgNonDicom.imgNonDicomMimeType|非DICOM影像MimeType</td>
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span>urn:ietf:bcp:13#image/jpeg</span></span>
            </td>
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
                padding:0px 4px 0px 4px\" class=\"hierarchy\">
                cancerStage.cancerStage|癌症期別，醫院自行填入癌症期別(1~4)，若為不適用者填9(不適用)。</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"CodeSystem-cancer-stage.html#cancer-stage-1\">NHI-健保重大傷病-癌症期別 1</a>:
                        第一期</span></span></td>
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
                padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\"
                class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\"
                    class=\"hierarchy\" /><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white;
                    background-color: inherit\" title=\"Item\" class=\"hierarchy\" /> 6.3</td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">cancerStage.assessDate|癌症分期量表評估日期，YYYY-MM-DD，西元年月日，民國前為負數。
            </td>
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\" />
            <td style=\"vertical-align: top; text-align : left; background-color: white; border: 1px #F0F0F0 solid;
                padding:0px 4px 0px 4px\" class=\"hierarchy\">2024-01-01</td>
        </tr>
         <tr>
            <td colspan=\"4\" class=\"hierarchy\"><br /><a href=\"http://hl7.org/fhir/R4/formats.html#table\"
                    title=\"Legend for this format\"><img
                        src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\"
                        alt=\"doco\" style=\"background-color: inherit\" /> Documentation for this format</a></td>
        </tr>
    </table>
</div>"