{% include quickstart-note.md %}

#### 必須支援以下查詢參數：


1. **必須（SHALL）** 支援透過查詢參數 **[`patient`](SearchParameter-Task-patient.html)**.**[`identifier`](SearchParameter-Patient-identifier.html)** 查詢所有Task：  
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))  
    `GET [base]/Task?patient.identifier=[code]`  

    例子：  
      (1) GET [base]/Task?patient.identifier=A123456789  

2. **必須（SHALL）** 支援透過查詢參數 **[`patient`](SearchParameter-Task-patient.html)**.**[`name`](SearchParameter-Patient-name.html)** 查詢所有Task：  
    ([如何透過reference查詢](http://hl7.org/fhir/R4/search.html#reference))   
    ([如何透過string查詢](http://hl7.org/fhir/R4/search.html#string))  
    `GET [base]/Task?patient.name=[string]`  

    例子：  
      (1) GET [base]/Task?patient.name=王大明  

3. **必須（SHALL）** 支援透過查詢參數 **[`period`](SearchParameter-Task-period.html)** 查詢所有Task：  
    ([如何透過date查詢](https://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/Task?period={gt|lt|ge|le}[date]{&period={gt|lt|ge|le}[date]}`  

    例子：  
      (1) GET [base]/Task?period=gt2025-04-30&period=lt2025-01-07  

4. **必須（SHALL）** 支援透過查詢參數 **[`modified`](SearchParameter-Task-modified.html)** 查詢所有Task：  
    ([如何透過date查詢](https://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/Task?modified={gt|lt|ge|le}[date]{&modified={gt|lt|ge|le}[date]}`  

    例子：  
      (1) GET [base]/Task?modified=gt2025-01-05&modified=lt2025-01-07   

5. **必須（SHALL）** 支援透過查詢參數 **[`identifier`](SearchParameter-Task-identifier.html)** 查詢所有Task：  
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))   
    `GET [base]/Task?identifier=[code]`  

    例子：  
      (1) GET [base]/Task?identifier=20241231010109051701    

6. **必須（SHALL）** 支援透過查詢參數 **[`authored-on`](SearchParameter-Task-authored-on.html)** 查詢所有Task：  
    ([如何透過date查詢](https://hl7.org/fhir/R4/search.html#date))  
    `GET [base]/Task?authored-on={gt|lt|ge|le}[date]{&authored-on={gt|lt|ge|le}[date]}`  

    例子：  
      (1) GET [base]/Task?authored-on=gt2025-04-30&authored-on=lt2025-01-07  

7. **必須（SHALL）** 支援透過查詢參數 **[`status`](SearchParameter-Task-status.html)** 查詢所有Task：  
    ([如何透過token查詢](http://hl7.org/fhir/R4/search.html#token))   
    `GET [base]/Task?status=[code]`  

    例子：  
      (1) GET [base]/Task?status=completed    