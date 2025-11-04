Profile:        TaskTWCI
Parent:         Task
Id:             Task-twci
Title:          "重大傷病申請-Task TWCI"
Description:    "此重大傷病申請-Task TWCI Profile說明TWCI IG如何進一步定義FHIR的Task Resource以呈現重大傷病申請之內容"
* focus and for and basedOn and authoredOn and executionPeriod and businessStatus and status MS
* focus only Reference(QuestionnaireResponseTWCI)
* for only Reference(PatientTWCI)
* basedOn only Reference(ConditionTWCI)
* focus 1..1
* for 1..1
* basedOn 1..1
* businessStatus from NHICIApproveResult
* focus  ^short = "重大傷病申請書回覆(QuestionnaireResponse)"
* for  ^short = "病人資訊(Patient)"
* basedOn  ^short = "重大傷病(Condition)"
* authoredOn  ^short = "收件日期（上傳時不須填寫，由健保署端收件後填寫。）"
* identifier  ^short = "受理編號（上傳時不須填寫，由健保署端收件後填寫。）"
* executionPeriod  ^short = "受理日期（上傳時不須填寫，由健保署端收件後填寫。）"
* businessStatus ^short = "核定結果（上傳時不須填寫，由健保署端收件後填寫。）"
* status ^short = "查詢進度。上傳時請固定填requested。送審:requested | 審結:completed | 核定同意:accepted | 核定不同意:rejected | 退件:failed | 補件:on-hold"
* intent ^short = "【因FHIR設計而需必填】上傳時請固定填order。unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option"
* intent = http://hl7.org/fhir/request-intent#order
* status = http://hl7.org/fhir/task-status#requested


CodeSystem: NHICIApproveResult	
Id: nhi-approve-result
Title: "NHI-健保重大傷病-核定結果"
Description: "臺灣衛生福利部中央健康保險署「核定結果」代碼，代碼出版日期：2025-11-07；資料所屬單位：臺灣衛生福利部中央健康保險署。"
* ^caseSensitive = true
* ^content = #complete
* ^date = "2025-11-07"
* ^version = "1.0.1"
* ^experimental = false
* #0 "退件（不符申請條件）"
* #1 "退件（不發卡）"
* #2 "補件（個人）"
* #3 "補件（院所）"
* #4 "不同意"
* #5 "同意42天"
* #6 "同意3個月"
* #6B "同意6個月"
* #7 "同意1年"
* #7B "同意2年"
* #8 "同意3年"
* #9 "同意5年"
* #A "同意永不換卡"
* #B "同意"

ValueSet: NHICIApproveResult
Id: nhi-approve-result
Title: "NHI-健保重大傷病-核定結果值集"
Description: "NHI-健保重大傷病-核定結果值集"
* ^date = "2025-11-07"
* ^version = "1.0.1"
* ^experimental = false
* include codes from system NHICIApproveResult