Instance: con-min
InstanceOf: ConditionTWCI
Title: "重大傷病"
Description: "依據重大傷病-Condition TWCI Profile呈現重大傷病之範例"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = https://nhicore.nhi.gov.tw/ci/CodeSystem/nhi-category#01
* subject = Reference(Patient/pat-min)

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Condition-twci.html\">重大傷病-Condition TWCI</a></p>
    </div>
	<p>
		<b>病情狀態</b>：Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://hl7.org/fhir/R4/codesystem-condition-clinical.html/\">ConditionClinicalStatusCodes </a>#active)</span>
	</p>
	<p>
		<b>重大傷病類別</b>：癌症 <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"ValueSet-nhi-category.html/\">ConditionClinicalStatusCodes </a>#01)</span>
	</p>
	<p><b>病人</b>：<a href=\"Patient-pat-min.html\">Patient/pat-min</a></p>
</div>"