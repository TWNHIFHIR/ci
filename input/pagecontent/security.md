### 實作者 **建議應該(SHOULD)** 了解與FHIR交易相關的[安全考量](http://hl7.org/fhir/R4/security.html)，特別是與以下相關
<br>

### **[通訊(Communication)](http://hl7.org/fhir/R4/security.html#http)**

### **授權/存取控制(Authorization/Access Control)**

每一次存取RESTful服務時，必須在傳送的HTTP Header加入署方認可的API識別碼，以參數KeyId表示。

- 例，KeyId = API識別碼
       
    - 回覆 400(參數不正確) - 傳送的參數不合法。

    - 回覆 401(未經授權) - 參數KeyId不合法。

    - 回覆 403(禁止存取) - 終端路徑不合法。

    - 回覆 404(找不到網頁) - 終端路徑不存在。
<br>

### **數位簽章(Digital Signatures)** 

以[醫事憑證管理中心](https://hca.nat.gov.tw/)核發之有效憑證進行數位簽章操作，申請方式依[醫事憑證管理中心](https://hca.nat.gov.tw/)要求辦理。
於成功申請並取得憑證後，將欲上傳資料透過憑證SDK(函式P12Sign)產生上傳資料的數位簽章值，將取得的數位簽章值進一步以BASE64函式加密，取得一行經過BASE64函式加密的長字串，加入傳送的HTTP Header中，以參數AUTH表示。 

- 例，AUTH = 一行經過BASE64函式加密的數位簽章值。

    - 函式P12Sign參數：

        iFlags = CG_FLAG_DETACHMSG
          
        iKeyUsage = CG_KU_NON_REPUDIATION
          
        HashFlag = CG_ALGOR_SHA256
<br>   

### 本專案安全一致性要求如下

* 系統 **必須(SHALL)** 保留各種交易的稽核日誌(audit logs)
* 系統 **必須(SHALL)** 符合FHIR通訊安全(Communications Security)要求
* 系統 **必須(SHALL)** 依據國家、地方和機構政策實作同意要求。業務夥伴協定(Business Associate Agreements) **建議應該(SHOULD)**記錄系統相互同意的要求。
* 對於認證和授權，系統 **必須(SHALL)** 支援本署權責中心核發的API識別碼
* 對於數位簽章，系統 **必須(SHALL)** 支援[醫事憑證管理中心](https://hca.nat.gov.tw/)核發且在有效期內的憑證。注意：憑證必須(SHALL)為機構非IC卡符記憑證
* 系統 **可以(MAY)** 透過加密和相關存取控制來保護資料的機密性。所使用的策略和方法不在此規範的範圍內。