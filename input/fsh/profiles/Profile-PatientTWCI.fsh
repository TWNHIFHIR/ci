Profile:        PatientTWCI
Parent:         TWCorePatient
Id:             Patient-twci
Title:          "病人資訊-Patient TWCI"
Description:    "此病人資訊-Patient TWCI Profile說明TWCI IG如何進一步定義臺灣核心-病人(TW Core Patient) Profile以呈現重大傷病之病人基本資料"
* identifier 1..1

* identifier[idCardNumber] 1..1
* identifier[residentNumber] 0..0
* identifier[passportNumber] 0..0
* identifier[medicalRecord] 0..0
* name 1..1
* name[official] 0..0
* name[temp] 0..0
* name[anonymous] 0..0
* name[usual] 1..1
* name[usual].text 1..1
* name obeys pat-name
* . obeys patient-gender-match
* address 1..1
* address.postalCode 1..1
* address.postalCode.extension[PostalCode] 1..1
* address.postalCode.extension[PostalCode].value[x].coding[PostalCode3] 1..1
* address.postalCode.extension[PostalCode].value[x].coding[PostalCode5] 0..0
* address.postalCode.extension[PostalCode].value[x].coding[PostalCode6] 0..0
* address.text 1..1
* telecom 2..3
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.ordered = false
* telecom ^slicing.rules = #closed
* telecom contains
    sms 1..1 MS and
    phone 1..1 MS and
    email 0..1 MS
* telecom[sms].system = #sms
* telecom[phone].system = #phone
* telecom[email].system = #email

* identifier[idCardNumber].value obeys txt-10
* identifier[idCardNumber] ^short = "身分證字號"
* name[usual] ^short = "姓名"
* gender ^short = "病人性別。male:男性 ｜ female:女性 ｜ other:其他 ｜ unknown:未知"
* birthDate ^short = "出生日期，YYYY-MM-DD，西元年月日。"
* address.postalCode.extension[PostalCode].value[x].coding[PostalCode3].code ^short = "郵遞區號"
* address.text ^short = "連絡住址"
* telecom[sms] ^short = "手機號碼。應為數字10碼(寄送核發簡訊使用)"
* telecom[phone] ^short = "連絡電話"
* telecom[email] ^short = "電子郵件信箱"
* telecom[sms] obeys telecom-sms
* address.text obeys txt-80
* telecom[phone].value obeys txt-15
* telecom[email].value obeys txt-40

Invariant:   telecom-sms
Description: "手機號碼格式有誤，應為數字10碼"
Expression:  "value.toString().length() = 10"
Severity:    #error

Invariant:   pat-name
Description: "病人姓名有誤，超過12字"
Expression:  "text.length() <= 12"
Severity:    #error

Invariant: patient-gender-match
Description: "gender依據identifier:idCardNumber第二位字符檢核男性與女性代碼 (1,8,A,C,Y=male, 2,9,B,D,X=female)"
Expression: "((identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '1' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '8' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = 'A' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = 'C' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = 'Y') 
  implies gender = 'male') 
and 
((identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '2' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '9' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = 'B' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = 'D' or
  identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = 'X') 
  implies gender = 'female')"
Severity: #error

