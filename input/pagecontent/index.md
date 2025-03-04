<div class="bg-success" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
<p><b>相關資訊可參考衛生福利部中央健康保險署的<a href="https://www.nhi.gov.tw/ch/lp-2957-1.html" target="_blank">重大傷病專區</a>。</b></p>
</div>

### 專案介紹
<div  style="padding-left: 10px;"> 
<p>臺灣健保重大傷病實作指引(Taiwan NHI Catastrophic Illness Implementation Guide，TWCI IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在<a href="http://hl7.org/fhir/R4/">FHIR R4.0.1</a>之標準基礎上，繼承TW Core IG V0.3.1 (2024-10-21)，進一步定義適用於「重大傷病」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。</p>
</div>

### 專案背景
<div  style="padding-left: 10px;"> 
<p>衛生福利部中央健康保險署規劃癌症重大傷病上傳機制，係配合賴總統於健康台灣之「國家癌症防治計畫」政策，刻正規劃NGS申報資料收載、癌症重大傷病申請、癌藥事前審查申請及癌症個案療效追蹤等癌症醫療資訊之數位轉型，期透過資料有效互通，達成以病人為中心之完整照護。</p>
</div>


### 專案範圍

#### 使用案例(Use Case)
<div  style="padding-left: 10px;"> 
<p>本專案之主要實作者為醫院，醫院透過此系統，協助保險對象申請重大傷病，透過共通傳輸平台批次上傳重大傷病申請證明書相關文件，並送至衛生福利部中央健康保險署審核。</p>
<img class="figure-img img-responsive img-rounded center-block" src="usecase.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/>
</div>

#### 循序圖
送核、送核補件、申復及申復補件之作業流程皆相同，依該個案是首次送審或不同意後再次送審等之狀態進行選擇不同的申請類別，以做為行政程序之判斷。

送核、送核補件、申復及申復補件作業流程如下：
1. 醫院開發重大傷病系統產生重大傷病申請證明（Bundle TWCI）
2. 醫院將已產生之重大傷病申請證明相關文件上傳至健保署
3. 若資料符合格式，健保署回覆上傳成功訊息，由醫院查詢上傳結果
4. 若資料不符合格式，健保署回覆上傳失敗訊息，由醫院查詢上傳結果
5. 資料上傳成功後，健保署申請證明通過，由醫院查詢申請結果
6. 資料上傳成功後，健保署申請證明未通過，由醫院查詢申請結果
<!--For CI-Build> <div style="justify-content: center;display: flex;">{% include index.svg %}</div> <-->
<img class="figure-img img-responsive img-rounded center-block" src="sequence.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/>

### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>TWCI IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：TWCI IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：TWCI IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用TWCI IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：TWCI IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用TWCI IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>TWCI IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：TWCI IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：TWCI IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用TWCI IG網站進行實作時，有關資料存取授權的作法。</li>
	<!--<li><strong><a href="upload.html">其他必要資料交換規範</a></strong>：主要說明採用TWCI IG網站進行上傳傳染病檢驗報告時上傳相關須知說明。</li>-->
	<li><strong><a href="https://vacc.cdc.gov.tw/vacc/history.html">版本異動</a></strong>：若TWCI IG網站的版本有所異動，皆可透過<a href="https://vacc.cdc.gov.tw/vacc/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
<table class="grid" style="width:100%">
<thead>
<tr class="header">
<th style="width:10%">角色</th>
<th style="width:20%">姓名</th>
<th style="width:40%">機構</th>
<th style="width:20%">聯絡方式</th>
</tr>
</thead>
<tbody>
<tr>
<td>作者-IG</td>
<td>李麗惠（Li-Hui Lee）</td>
<td rowspan="3" style="vertical-align: middle;">國立臺北護理健康大學-健康事業管理系</td>
<td><a href="mailto:cclhlee@gmail.com">cclhlee@gmail.com</a><br>
    <a href="mailto:cclhlee@ntunhs.edu.tw">cclhlee@ntunhs.edu.tw</a></td>
</tr>
<tr>
<td>作者-IG</td>
<td>曾鈺珈（Yu-Jia Tseng）</td>
<td><a href="mailto:yujia151645@gmail.com">yujia151645@gmail.com</a></td>
</tr>
<tr>
<td>作者-IG</td>
<td>黃甄翔（Chen-Hsiang Huang）</td>
<td><a href="mailto:014120huang@gmail.com">014120huang@gmail.com</a></td>
</tr>
</tbody>
</table>