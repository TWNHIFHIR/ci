Instance: tas-min
InstanceOf: TaskTWCI
Title: "重大傷病申請"
Description: "依據重大傷病申請-Task TWCI Profile呈現重大傷病申請之範例"
Usage: #example
* status = http://hl7.org/fhir/task-status#requested
* businessStatus = https://twcore.mohw.gov.tw/ig/ci/CodeSystem/nhi-approve-result#5
* intent = http://hl7.org/fhir/request-intent#order
* focus = Reference(QuestionnaireResponse/queRes-min)
* basedOn = Reference(Condition/con-min)
* for  = Reference(Patient/pat-min)

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Task-twci.html\">重大傷病申請-Task TWCI</a></p>
    </div>
	<p><b>重大傷病</b>：<a href=\"Condition-con-min.html\">Condition/con-min</a></p>
	<p>
		<b>狀態</b>：Requested <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-task-status.html/\">TaskStatus </a>#requested )</span>
	</p>
	<p>
		<b>意圖</b>：Order <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/valueset-task-intent.html/\">TaskIntent </a>#order )</span>
	</p>
	<p>
		<b>核定結果</b>：同意42天 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-nhi-approve-result.html/\">TaskStatus </a>#5 )</span>
	</p>
	<p><b>重大傷病申請書回覆</b>：<a href=\"QuestionnaireResponse-queRes-min.html\">QuestionnaireResponse/queRes-min</a></p>
	<p><b>病人資訊</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
</div>"