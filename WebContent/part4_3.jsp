<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행HANA</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/basic.css">
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
	padding: 20px;
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


/* part4_2 css */

#bar-div{
	text-align:center;
	padding: 0 auto;
}
.progressTag {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        width: 60%;
        height: 30px;
        border-radius: 7px;
        color: #27b2a5;
      }
      progress::-webkit-progress-bar {
        background-color: grey;
        border-radius: 8px;
      }
      progress::-webkit-progress-value {
        background-color: #27b2a5;
        border-radius: 8px;
      }
      progress::-moz-progress-bar {
        background-color: grey;
        border-radius: 8px;
      }
      
      
.usercontent2{
	max-width:100%;
	margin: 10px auto;
    padding: 10px;
    border: 1px solid #bcbcbc;
    text-align:center;
}

.usercontentheader{
	margin-top:20px;
	margin-bottom:20px;
	font-size:30px;
	text-align:center;
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
</style>
</head>

<body>

<%-- <jsp:include page="/WEB-INF/jsp/include/header.jsp"/> --%>


<div id="container">

	<div id="header">
		<h1>그룹 메인 사진 및 그룹 명칭</h1>
		
		<div id="bar-div">
			<progress class="progressTag" value="50" max="100"></progress>	
		</div>
	
	</div>
	
	<div class="topnav">
	  <a href="part4_1.jsp" >그룹 적금 현황</a>
	  <a href="part4_2.jsp">나의 적금 현황</a>
	  <a href="part4_3.jsp" class="active">여행 경비 사용 현황</a>
	  <a href="part4_4.jsp">여행 정보</a>
	  <a href="part4_5.jsp">그룹 관리</a>
	</div>


	<div id="content">
		<div class="usercontent2">
			<div class="usercontentheader">
				경비 사용 내역
			</div>
			<table class="detailtablelist">
				<thead>
					<tr>
						<th style="width:15%" class="thead">날짜</th>
						<th style="width:30%" class="thead">입출금내역</th>
						<th style="width:20%" class="thead">입출금액</th>
						<th style="width:20%" class="thead">잔액</th>
						<th style="width:15%" class="thead">범주</th>
					</tr>
				</thead>
			
		
				<tbody>
					
					<%-- DB 반복 <c:forEach items="" var=""> --%>
					<tr class="trrow">
						<td>17.05.01</td>
						<td>비행기 예매</td>
						<td>360,000</td>
						<td>672,432</td>
						<td>교통비</td>
					</tr>
					
					<tr class="trrow">
						<td>17.05.01</td>
						<td>A 게스트하우스</td>
						<td>100,000</td>
						<td>572,432</td>
						<td>숙박비</td>
					</tr>
					
					<tr class="trrow">
						<td>17.05.07</td>
						<td>렌터카 대여</td>
						<td>150,000</td>
						<td>422,432</td>
						<td>교통비</td>
					</tr>
					
					<tr class="trrow">
						<td>17.05.07</td>
						<td>오설록</td>
						<td>24,500</td>
						<td>397,932</td>
						<td>식비</td>
					</tr>
					
					<tr class="trrow">
						<td>17.05.07</td>
						<td>제주몸국</td>
						<td>40,000</td>
						<td>357,932</td>
						<td>식비</td>
					</tr>
					
					<tr class="trrow">
						<td>17.05.08</td>
						<td>비자림</td>
						<td>3,000</td>
						<td>354,932</td>
						<td>관광비</td>
					</tr>
					
					<tr class="trrow">
						<td>...</td>
						<td>...</td>
						<td>...</td>
						<td>...</td>
						<td>...</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="usercontent2">
			<div class="usercontentheader">
				상세분석
			</div>
			<div class="usercontentheader">
				<img src="image/chart.PNG" width=80%></img>
			</div>
			
		</div>
	</div>
</div>


<%-- <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/> --%>

</body>
</html>