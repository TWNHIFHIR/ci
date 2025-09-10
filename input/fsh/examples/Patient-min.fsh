Instance: pat-min
InstanceOf: PatientTWCI
Title: "病人資訊"
Description: "依據病人資訊-Patient TWCI Profile呈現病人基本資料之範例"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[medicalRecord].use = #official
* identifier[medicalRecord].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalRecord].type.coding.code = #MR
* identifier[medicalRecord].system = "https://tpech.gov.taipei"
* identifier[medicalRecord].value = "123456"

* name[usual].use = #usual
* name[usual].text = "王大明"

* gender = #male
* birthDate = "2001-01-01"
* address.text = "台北市大安區信義路三段140號"
//* address.postalCode.extension.url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code"
* address.postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw"
* address.postalCode.extension[PostalCode].valueCodeableConcept.coding[PostalCode3].code = #106
/** address.postalCode.extension.valueCodeableConcept.coding.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw"
* address.postalCode.extension.valueCodeableConcept.coding.code = #106*/

* telecom[mobile].system = #sms
* telecom[mobile].value = "0912345678"
* telecom[contactTel].system = #phone
* telecom[contactTel].value = "0227065866"
* telecom[email].system = #email
* telecom[email].value = "a123456@nhi.gov.tw"


* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">
        <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Patient-twci.html\">病人資訊-Patient TWCI</a></p>
    </div>
	<blockquote>
		<p>
			<b>識別碼型別</b>：National Person Identifier <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#NNxxx） </span>
			<br />
			<b>身分證號（official）</b>：A123456789 （http://www.moi.gov.tw）
		</p>
	</blockquote>
	<blockquote>
		<p>
			<b>識別碼型別</b>：Medical record number <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> （ <a href=\"http://terminology.hl7.org/CodeSystem/v2-0203\">Identifier Type Codes</a>#MR） </span>
			<br />
			<b>病歷號（official）</b>：123456 （https://tpech.gov.taipei）
		</p>
	</blockquote>
	<p>
		<b>姓名（usual）</b>：王大明
	</p>
	<p>
		<b>性別</b>：男（male）
	</p>
	<p>
		<b>出生日期</b>：2001-01-01
	</p>
	<p>
		<b>手機號碼</b>：0912345678
	</p>
	<p>
		<b>連絡電話</b>：0227065866
	</p>
	<p>
		<b>電子郵件信箱</b>：a123456@nhi.gov.tw
	</p>
	<p>
		<b>郵遞區號</b>：106
	</p>
	<p>
		<b>連絡住址</b>：台北市大安區信義路三段140號
	</p>
</div>"