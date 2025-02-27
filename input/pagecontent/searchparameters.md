以下為本IG使用到的所有查詢參數(SearchParameter)。 

### 對外服務之API

#### 以Profile分類
##### Task
- [period](SearchParameter-Task-period.html)
- [patient](SearchParameter-Task-patient.html)
- [authored-on](SearchParameter-Task-authored-on.html)
- [modified](SearchParameter-Task-modified.html)
- [identifier](SearchParameter-Task-identifier.html)
- [status](SearchParameter-Task-status.html)

##### Patient
- [name](SearchParameter-Patient-name.html)
- [identifier](SearchParameter-Patient-identifier.html)


#### 以查詢欄位分類
##### 病人身分證號：[Task.patient](SearchParameter-Task-patient.html)[.identifier](SearchParameter-Patient-identifier.html)
`GET [base]/Task?patient.identifier=[身分證號]`  
例子：  
      (1) GET [base]/Task?patient.identifier=A123456789   

##### 病人姓名：[Task.patient](SearchParameter-Task-patient.html)[.name](SearchParameter-Patient-name.html)
`GET [base]/Task?patient.name=[姓名]`  
例子：  
      (1) GET [base]/Task?patient.name=A123456789 

##### 受理日期：[Task.period](SearchParameter-Task-period.html)
`GET [base]/Task?period={gt|lt|ge|le}[受理日期]{&period={gt|lt|ge|le}[受理日期]}`  
例子：  
      (1) GET [base]/Task?period=gt2024-12-31&period=lt2025-01-07

##### 核定日期：[Task.modified](SearchParameter-Task-modified.html)
`GET [base]/Task?modified={gt|lt|ge|le}[核定日期]{&modified={gt|lt|ge|le}[核定日期]}`  
例子：  
      (1) GET [base]/Task?modified=gt2025-01-05&modified=lt2025-01-07

##### 受理編號：[Task.identifier](SearchParameter-Task-identifier.html)
`GET [base]/Task?identifier=[受理編號]`  
例子：  
      (1) GET [base]/Task?identifier=20241231010109051701

##### 收件日期：[Task.authored-on](SearchParameter-Task-authored-on.html)
`GET [base]/Task?authored-on={gt|lt|ge|le}[收件日期]{&authored-on={gt|lt|ge|le}[收件日期]}`  
例子：  
      (1) GET [base]/Task?authored-on=gt2024-12-31&authored-on=lt2025-01-07

##### 查詢進度：[Task.status](SearchParameter-Task-status.html)
`GET [base]/Task?status=[查詢進度]`  
例子：  
      (1) GET [base]/Task?status=completed


### 未對外服務之API

#### Bundle
- [_id](SearchParameter-Bundle-id.html)