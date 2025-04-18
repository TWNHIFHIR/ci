Instance: CapabilityStatementTWCIClient
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://twcore.mohw.gov.tw/ig/ci/CapabilityStatement/CapabilityStatementTWCIClient"
* version = "0.1.0"
* name = "CapabilityStatementTWCIClient"
* title = "臺灣重大傷病-用戶端(TWCI Client)"
* status = #active
* experimental = false
* publisher = "衛生福利部中央健康保險署"
* date = "2024-12-31"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://twcore.mohw.gov.tw/ig/ci/ImplementationGuide/tw.gov.mohw.nhi.ci"
* description = "臺灣健保重大傷病實作指引(TWCI IG)用戶端(Client)之能力聲明"
* rest.mode = #client
* rest.documentation = "臺灣重大傷病-用戶端(TWCI Client)必須（SHALL）使用臺灣重大傷病伺服端（TWCI Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個臺灣重大傷病Profile(s)。"

* rest.resource[+].type = #Bundle
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Bundle-twci"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Bundle-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Questionnaire
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Questionnaire-twci"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/QuestionnaireResponse-twci"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* rest.resource[+].type = #Task
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Task-twci"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "period"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-period"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "authored-on"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-authored-on"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "modified"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-modified"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Task-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Patient-twci"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchParam[0].name = "name"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Patient-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://twcore.mohw.gov.tw/ig/ci/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL

* rest.resource[+].type = #Condition
* rest.resource[=].profile = "https://twcore.mohw.gov.tw/ig/ci/StructureDefinition/Condition-twci"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].referencePolicy = #resolves

* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <h2 id=\"title\">臺灣重大傷病-用戶端(TWCI Client)</h2>
    <ul>
        <li>實作指引版本：0.1.0</li>
        <li>FHIR版本：4.0.1</li>
        <li>支援格式：<code>json</code>, <code>xml</code></li>
        <li>發佈日：2024-12-31</li>
        <li>發佈者：衛生福利部中央健康保險署</li>
    </ul>
    <h3 id=\"shallIGs\">建議應該（SHOULD）支援以下實作指引</h3>
    <ul>
        <li><a href=\"index.html\">臺灣重大傷病實作指引 (TWCI IG)</a></li>
    </ul>
    <h2 id=\"rest\">Client的FHIR RESTful功能要求</h2>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h3 id=\"mode1\" class=\"panel-title\">模式：<code>client</code></h3>
        </div>
        <div class=\"panel-body\">
            <div>
                <p>臺灣重大傷病-用戶端(TWCI Client)<b>必須(SHALL)</b>：<br/>
                    (1)使用使用臺灣重大傷病伺服端（TWCI Server）能力聲明中的查詢參數，支援讀取和查詢一個或多個臺灣重大傷病Profile(s)。</p>
                <p>安全性：<br/>
                    (1)有關要求和建議，請參閱<a href=\"security.html\">安全性</a>。</p>
            </div>
        </div>
    </div>
    <h3 id=\"resourcesCap1\">Resources或Profiles的RESTful功能</h3>
    <h4 id=\"resourcesSummary1\">Summary</h4>
    <p>共有六類Resources支援查詢，查詢參數如表列：</p>
    <div class=\"table-responsive\">
        <table class=\"table table-condensed table-hover\">
            <thead>
                <tr>
                    <th><b>Resource型別</b></th>
                    <th><b>Profile</b></th>
                    <th>Create</th>
                    <th>Read</th>
                    <th>VRead</th>
                    <th>Delete</th>
                    <th>Update</th>
                    <th><b>支援的查詢參數</b></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href=\"#Bundle1-1\">Bundle</a></td>
                    <td><a href=\"StructureDefinition-Bundle-twci.html\">重大傷病申請證明-Bundle TWCI</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>_id</td>
                </tr>
                <tr>
                    <td><a href=\"#Questionnaire1-2\">Questionnaire</a></td>
                    <td><a href=\"StructureDefinition-Questionnaire-twci.html\">重大傷病申請書-Questionnaire TWCI</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#QuestionnaireResponse1-3\">QuestionnaireResponse</a></td>
                    <td><a href=\"StructureDefinition-QuestionnaireResponse-twci.html\">重大傷病申請書回覆-QuestionnaireResponse TWCI</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
                <tr>
                    <td><a href=\"#Task1-4\">Task</a></td>
                    <td><a href=\"StructureDefinition-Task-twci.html\">重大傷病申請-Task TWCI</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>period, patient, authored-on, modified, identifier, status</td>
                </tr>
                <tr>
                    <td><a href=\"#Patient1-5\">Patient</a></td>
                    <td><a href=\"StructureDefinition-Patient-twci.html\">病人資訊-Patient TWCI</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td>name, identifier</td>
                </tr>
                <tr>
                    <td><a href=\"#Condition1-6\">Condition</a></td>
                    <td><a href=\"StructureDefinition-Condition-twci.html\">重大傷病-Condition TWCI</a></td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\">y</td>
                    <td class=\"text-center\"></td>
                    <td class=\"text-center\">y</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <hr />
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Bundle1-1\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）</span>Bundle</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Bundle-twci.html\">重大傷病申請證明-Bundle TWCI</a>
                    </div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>SHALL</strong> 支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Bundle-id.html\">_id</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Bundle?_id=[id]</code><br/>
                                        <code>GET [base]/Bundle/[id]</code>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Questionnaire1-2\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL）
                </span>Questionnaire</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a
                            href=\"StructureDefinition-Questionnaire-twci.html\">重大傷病申請書-Questionnaire TWCI</a></div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>SHALL</strong> 支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"QuestionnaireResponse1-3\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL） </span>QuestionnaireResponse</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a
                            href=\"StructureDefinition-QuestionnaireResponse-twci.html\">重大傷病申請書回覆-QuestionnaireResponse TWCI</a></div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>SHALL</strong> 支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Task1-4\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL） </span>Task</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a
                            href=\"StructureDefinition-Task-twci.html\">重大傷病申請-Task TWCI</a></div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>SHALL</strong> 支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-patient.html\">patient</a>.<a href=\"SearchParameter-Patient-identifier.html\">identifier</a></td>
                                    <td><code>reference</code>, <code>token</code></td>
                                    <td>
                                        <code>GET [base]/Task?patient.identifier=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-patient.html\">patient</a>.<a href=\"SearchParameter-Patient-name.html\">name</a></td>
                                    <td><code>reference</code>, <code>string</code></td>
                                    <td>
                                        <code>GET [base]/Task?patient.name=[string]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-period.html\">period</a></td>
                                    <td><code>date</code></td>
                                    <td>
                                        <code>GET [base]/Task?period={gt|lt|ge|le}[date]{&amp;period={gt|lt|ge|le}[date]}</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-modified.html\">modified</a></td>
                                    <td><code>date</code></td>
                                    <td>
                                        <code>GET [base]/Task?modified={gt|lt|ge|le}[date]{&amp;modified={gt|lt|ge|le}[date]}</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Task?identifier=[code]</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-authored-on.html\">authored-on</a></td>
                                    <td><code>date</code></td>
                                    <td>
                                        <code>GET [base]/Task?authored-on={gt|lt|ge|le}[date]{&amp;authored-on={gt|lt|ge|le}[date]}</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Task-status.html\">status</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Task?status=[code]</code>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Patient1-5\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL） </span>Patient</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a href=\"StructureDefinition-Patient-twci.html\">病人資訊-Patient TWCI</a></div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code></div>
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>SHALL</strong> 支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
                <p />
                <div class=\"row\">
                    <div class=\"col-lg-12\"><span class=\"lead\">Search Parameters</span>
                        <table class=\"table table-condensed table-hover\">
                            <thead>
                                <tr>
                                    <th>遵從度</th>
                                    <th>參數</th>
                                    <th>類型</th>
                                    <th>範例</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Patient-identifier.html\">identifier</a></td>
                                    <td><code>token</code></td>
                                    <td>
                                        <code>GET [base]/Patient?identifier=[code]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><b>必須（SHALL）</b></td>
                                    <td><a href=\"SearchParameter-Patient-name.html\">name</a></td>
                                    <td><code>string</code></td>
                                    <td>
                                        <code>GET [base]/Patient?name=[string]</code><br/>
                                        <p>實作請參考<a href=\"searchparameters.html#以查詢欄位分類\">查詢參數</a></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=\"col-lg-5\">\u00a0</div>
                </div>
            </div>
        </div>
    </div>
    <div class=\"panel panel-default\">
        <div class=\"panel-heading\">
            <h4 id=\"Condition1-6\" class=\"panel-title\"><span style=\"float: right;\">預期的遵從度： 必須（SHALL） </span>Condition</h4>
        </div>
        <div class=\"panel-body\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-lg-7\"><span class=\"lead\">Profile</span><br /><a
                            href=\"StructureDefinition-Condition-twci.html\">重大傷病-Condition TWCI</a></div>
                    <div class=\"col-lg-5\"><span class=\"lead\">支援的參照政策（Reference policy）</span><br /><code>resolves</code>
                    </div>
                    <div class=\"col-lg-6\"><span class=\"lead\">能力摘要</span><br />
                        <ul>
                            <li><strong>SHALL</strong> 支援 <code>create</code>, <code>read</code>,
                                <code>vread</code>, <code>update</code>.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>"