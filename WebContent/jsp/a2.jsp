<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행HANA</title>
<style>


ul,li{
	list-style:none;
}

* {
    margin: 0;
    padding: 0;
}


#container{
	max-width:100%;
	margin: 10px auto;
    padding: 20px;
    border: 1px solid #bcbcbc;
}


#header{
	text-align:center;
	max-width:100%;
	min-height:50px;
    margin-bottom: 20px;
    border: 1px solid #bcbcbc;
}

#content{
	max-width: 100%;
    margin: 10px auto;
    padding: 20px;
    border: 1px solid #bcbcbc;
}


@media ( max-width: 480px ) {
    #container {
		float:none;
		width: auto;
    }

    #header {
		float:none;
		width: auto;
    }
    
    #nav {
		float:none;
		width: auto;
    }
    
    #content {
		float:none;
		width: auto;
    }
}    


.topnav {
  background-color: #fff;
  overflow: hidden;
}

.topnav a {
  float: left;
  display: block;
  color: #000;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border-bottom: 3px solid transparent;
}

.topnav a:hover {
  border-bottom: 3px solid #27b2a5;
}

.topnav a.active {
  border-bottom: 3px solid #27b2a5;
}


/* part4_1 css */
.usercontent{
	max-width:100%;
	margin: 10px auto;
    padding: 10px;
    border: 1px solid #bcbcbc;
    text-align:left;
}

.contentheader{
	padding:20px;
	font-size:20px;
}

.contentbar{
	padding-left:20px;
	padding-bottom:10px;
}

#bar-div{
	text-align:center;
	padding: 0 auto;
}

.groupprogress{
	width:100%;
    height: 20px;
    background: #27b2a5;
    border-radius: 15px;
    margin-top:30px;
    
    overflow: visible; 
    position: relative; 

    
}
.groupprogress .progress-bar{
    height: 20px;
    background-color:red;
    border-radius: 15px;
    box-shadow: none;
    position: relative;
    animation: animate-positive 2s;
    
}


.groupprogress .progress-bar:after{

    display:inline;
    background: url(airplane.png);
    background-size: 80px 80px;
    width: 80px; 
    height: 80px;
    position: absolute;
    top:-15px;
    right: -15px;
    content:"";
}



@-webkit-keyframes animate-positive{
    0% { width: 0; }
}
@keyframes animate-positive{
    0% { width: 0; }
}

.groupdiv{
	width:100%;

	text-align:center;
}

.groupdiv-progress{
	width:80%;	
	height:30px;
	float:left;
}

.groupdiv-result{
	width:10%;	
	height:30px;
	float:left;
}

.travelinformation{
	width:90%;
	margin:2%;
	text-align:left;
	
}

.layout_travelconditions {	
	padding: 10px;
	margin: 3px;
	font-size:20px;
	clear: both;
	display: block;
}

.detailtablelist{
	width:100%;
    text-align: center;
    letter-spacing: 0.3px;
}

.detailtablelist .thead{
	border-top: 2px solid #34afb9;
	border-left: #f4f4f4;
	border-right: #f4f4f4;
	border-bottom:1px solid #808080;
	background-color:#f4f4f4;
	text-align:center;
	vertical-align: middle;
}

.detailtablelist .trrow{
	border-bottom:1px solid #dadada;
}

.detailtablelist .trrow:hover{
	cursor:pointer;
	background-color:#d5eff4;
}
.detailtablelist tbody td{
	border-top: #fff;
	border-left: #fff;
	border-right: #fff;
	border-bottom:#fff;
	text-align:center;
	vertical-align: middle;
}

.usercontent2{
	max-width:100%;
	min-height:100px;
	margin: 10px auto;
    padding: 10px;
    border: 1px solid #bcbcbc;
    text-align:center;
}

button{
		  background:#1AAB8A;
		  color:#fff;
		  border:none;
		  position:relative;
		  height:80%;
		  font-size:1.6em;
		  padding:0 2em;
		  cursor:pointer;
		  transition:800ms ease all;
		  outline:none;
		}
		button:hover{
		  background:#fff;
		  color:#1AAB8A;
		}
		button:before,button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:8%;
		  width:0;
		  background: #1AAB8A;
		  transition:400ms ease all;
		}
		button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
		button:hover:before,button:hover:after{
		  width:100%;
		  transition:800ms ease all;
		}
		
		.smallbtn{
			width:150px;
			background:#1AAB8A;
			color:#fff;
			border:none;
		}
		.smallbtn:hover{
			background:#fff;
			color:#1AAB8A;
			border:none;
		}

</style>

<!-- datepicker -->
<link rel="stylesheet" href="datepicker/jquery-ui-1.12.1.custom/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="datepicker/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>


<script>

function addUser(username,age,cellphone){
	
	$("#"+username).remove();
	$('#membergroup > tbody').append('<tr id="'+username+'" class="trrow"><td>'+username+'</td><td>'+age+'</td><td>'+cellphone+'</td><td><input type="button" class="smallbtn" value="삭제하기" onclick="delUser(\''+username+'\','+age+',\''+cellphone+'\');"></td></tr>');
}

function delUser(username,age,cellphone){
	
	$("#"+username).remove();
	$('#usergroup > tbody').append('<tr id="'+username+'" class="trrow"><td>'+username+'</td><td>'+age+'</td><td>'+cellphone+'</td><td><input type="button" class="smallbtn" value="추가하기" onclick="addUser(\''+username+'\','+age+',\''+cellphone+'\');"></td></tr>');
}



function showPopup(){
	openWin = window.open("a2test_2.jsp",
            "childForm", "width=1000px, height=500px, resizable = no, scrollbars = no");    
}

function resultBtnclick(){
	
	 var fromdate = $("#fromDate").datepicker({ dateFormat: 'yy-mm-dd' }).val();
	 alert(fromdate);
	 
	 var fromyear = fromdate.substring(0,4);

	 var frommonth = fromdate.substring(5,7);

	 var fromday = fromdate.substring(8,10);
	 
	 var todate = $("#toDate").datepicker({ dateFormat: 'yy-mm-dd' }).val();
	 alert(todate);
	 
	 var toyear = todate.substring(0,4);

	 var tomonth = todate.substring(5,7);

	 var today = todate.substring(8,10);
	 
	 
     if(frommonth - 1 < 1){
    	 fromyear --;
    	 frommonth = 12;
    	 fromday = 1;
     }
     else{
    	 frommonth --;
     }
     
     if(frommonth < 10){
    	 frommonth = '0'+ frommonth;
     }
     
     var expectedPrice = (today - fromday + 1);
     document.getElementById("expectedPrice").value = "440,000";
     
     var expirydate = fromyear +'-' + frommonth + '-' + fromday;
     document.getElementById("expirydate").value = "2019-10-31";
     
     var finishdate = toyear + '-' + tomonth + '-' + (today*1+1);
     document.getElementById("finishdate").value = "2019-11-06";
     
}


function makegroup(){
	
	location.href="a3.jsp";
}
</script>


</head>

<body>

<!-- <header> -->
	<jsp:include page = "header.jsp" flush="true"></jsp:include>
<!-- </header> -->

<div id="container">

	<div id="header">
			<div class="groupdiv">   
				<img src="../image/service_introduction.png" style="max-width:100%; border:2px solid lightgray;"/>
			</div>	
	</div>

	<div id="content">
		<form action="" id="formTravelConditions">
		
			<!-- Page Summary Section -->
			<div class="layout_travelconditions">
				<h1> 여행 정보 입력 </h1>
				<hr>
			</div>
			
			<!-- Travel Conditions Section -->
			<div class="layout_travelconditions">
				<label> * 여행 기간:
					<input type="date" id="fromDate" placeholder="여행 시작일"> ~ 
					<input type="date" id="toDate" placeholder="여행 종료일" > 
				</label>
			</div>
			
			<div class="layout_travelconditions">
				<label> * 여행 도시:
					<input type="text" id="txtTravelCity" placeholder="여행 도시명" onClick="showPopup()"> 
				</label>
			</div>
			
			<!-- 연령대 라디오 버튼 -->
			<div class="layout_travelconditions">
				<label> * 주요 연령대:&nbsp;
					<input type="radio" id="numAges10" name="numAges" value="10대">10대&nbsp; 
					<input type="radio" id="numAges20" name="numAges" value="20대">20대&nbsp; 
					<input type="radio" id="numAges30" name="numAges" value="30대">30대&nbsp;
					<input type="radio" id="numAges40" name="numAges" value="40대">40대 &nbsp;
					<input type="radio" id="numAges50" name="numAges" value="50대">50대 &nbsp;
					<input type="radio" id="numAges60" name="numAges" value="60대">60대 &nbsp;
					<input type="radio" id="numAges70" name="numAges" value="70대">70대 &nbsp;
					<input type="radio" id="numAges80" name="numAges" value="80대">80대 &nbsp;
				</label>
			</div>
			
			<div class="layout_travelconditions">
				<label> 
					<button type="button" id="resultBtn" onclick="resultBtnclick()">예상 금액 산출하기</button> 
				</label>
			</div>
			
			
			<div class="layout_travelconditions">
				<label> * 1인당 예상 여행비용 산출액:
					<input type="text" id="expectedPrice" placeholder="예상금액산출"> 
				</label>
			</div>
			
			<!-- 만기일 시작 달의 1일  전달로 -->
			<div class="layout_travelconditions">
				<label> * 만기일:
					<input type="text" id="expirydate" placeholder="예상금액산출"> 
				</label>
			</div>
			
			<!-- 만기일 시작 달의 1일  전달로 -->
			<div class="layout_travelconditions">
				<label> * 여행 종료일:
					<input type="text" id="finishdate" placeholder="예상금액산출"> 
				</label>
			</div>
			
			<div class="layout_travelconditions">
				<label> * 납부횟수:
					<input type="number" id="expectedPrice" placeholder="납부횟수" min="1" max="100"> 
				</label>
			</div>
			
	
			
			<div class="layout_travelconditions">
				<label> *	그룹 이름: 
					<input type="text" id="txtTravelCity" placeholder="ex)우리는 HANA"> 
				</label>
			</div>
			
			<div class="layout_travelconditions">
				<label> * 대표 사진:
					<input type="file" id="txtTravelCity"> 
				</label>
			</div>
			
			
			<!-- Page Summary Section -->
			<div class="layout_travelconditions">
				<h1> 여행 멤버 초대 </h1>
				<hr>
			</div>
			
			
			<div class="usercontent2">
				<div class="usercontentheader">
					<h2>멤버 초대 현황</h2>
				</div>
				<table id="membergroup" class="detailtablelist">
					<thead>
						<tr>
							<th style="width:20%" class="thead">이름</th>
							<th style="width:30%" class="thead">나이</th>
							<th style="width:30%" class="thead">핸드폰번호</th>
							<th style="width:20%" class="thead">삭제</th>
						</tr>
					</thead>
				
			
					<tbody>
						
					</tbody>
				</table>
			</div>
		
			<div class="usercontent2">
				<div class="usercontentheader">
					<h2>멤버 리스트 현황</h2>
				</div>
				<table id="usergroup" class="detailtablelist">
					<thead>
						<tr>
							<th style="width:20%" class="thead">이름</th>
							<th style="width:30%" class="thead">나이</th>
							<th style="width:30%" class="thead">핸드폰번호</th>
							<th style="width:20%" class="thead">추가</th>
						</tr>
					</thead>
				
			
					<tbody>
						
						<%-- DB 반복 <c:forEach items="" var=""> --%>
						<tr id="박금융" class="trrow">
							<td>박금융</td>
							<td>24</td>
							<td>XXX-XXXX-XXX1</td>
							<td><input type="button" class="smallbtn" value="추가하기" onclick="addUser('박금융','24','XXX-XXXX-XXX1')"></td>
						</tr>
						
						<tr id="하금티" class="trrow">
							<td>하금티</td>
							<td>25</td>
							<td>XXX-XXXX-XXX2</td>
							<td><input type="button" class="smallbtn" value="추가하기" onclick="addUser('하금티','25','XXX-XXXX-XXX2')"></td>
						</tr>
						
						<tr id="윤티아" class="trrow">
							<td>윤티아</td>
							<td>26</td>
							<td>XXX-XXXX-XXX3</td>
							<td><input type="button" class="smallbtn" value="추가하기" onclick="addUser('윤티아','26','XXX-XXXX-XXX3')"></td>
						</tr>
						
					</tbody>
				</table>
			</div>
			
			
			<div style="margin-top:20px; text-align:center;">
				<button type="button" onclick="makegroup()">그룹생성</button>
			</div>
			
		
			
			
			
		</form>
		
	
	</div>
</div>

<script>
		$(function() {
			 $("#fromDate").datepicker({
			      dateFormat: 'yy-mm-dd' //Input Display Format 변경
			        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
			        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
			        ,changeYear: true //콤보박스에서 년 선택 가능
			        ,changeMonth: true //콤보박스에서 월 선택 가능                
			        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
			        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
			        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
			        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
			        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
			    });
		});
		
		$(function() {
			 $("#toDate").datepicker({
			      dateFormat: 'yy-mm-dd' //Input Display Format 변경
			        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
			        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
			        ,changeYear: true //콤보박스에서 년 선택 가능
			        ,changeMonth: true //콤보박스에서 월 선택 가능                
			        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
			        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
			        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
			        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
			        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
			    });
		});
</script>

<!-- <footer> -->
	<jsp:include page = "footer.jsp" flush="true"></jsp:include>
<!-- </footer> -->
</body>
</html>