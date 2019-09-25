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

.usercontentfooter{
	margin-top:10px;
	margin-bottom:10px;
	font-size:20px;
	text-align:center;
}

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
.progressTag2 {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        width: 90%;
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

<!-- <header> -->
	<jsp:include page = "header.jsp" flush="true"></jsp:include>
<!-- </header> -->

<div id="container">

	<!-- <header> -->
		<jsp:include page = "groupheader.jsp" flush="true"></jsp:include>
	<!-- </header> -->
	
	<div class="topnav">
	  <a href="a3.jsp">그룹 적금 현황</a>
	  <a href="a4.jsp"  class="active">나의 적금 현황</a>
	  <a href="a5.jsp">여행 경비 사용 현황</a>
	  <a href="a6.jsp">여행 정보</a>
	  <a href="a7.jsp">손님후기</a>
	</div>


	<div id="content">

		<div class="usercontent2">
		
			<div class="usercontentheader">
				<h3>김하나 손님의 현재까지 적금 현황</h3>
				<br>
				<h6>그룹명: 금융이랑 하금티랑 자카르타 여행</h6>
			</div>
			
			<div id="bar-div">
				<progress class="progressTag2" value="100" max="100"></progress>	
			</div>
			
			<div class="usercontentfooter">		
				100% | 440,000원
			</div>
			
			<div class="usercontentheader">
				상세 적금 내역
			</div>
			<table class="detailtablelist">
				<thead>
					<tr>
						<th style="width:20%" class="thead">날짜</th>
						<th style="width:50%" class="thead">입금내역</th>
						<th style="width:20%" class="thead">입금액</th>
						<th style="width:10%" class="thead">납부회차</th>
					</tr>
				</thead>
			
		
				<tbody>
					
					<%-- DB 반복 <c:forEach items="" var=""> --%>
					<tr class="trrow">
						<td>19.09.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>08</td>
					</tr>
					
					<tr class="trrow">
						<td>19.08.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>07</td>
					</tr>
					
					<tr class="trrow">
						<td>19.06.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>06</td>
					</tr>
					
					<tr class="trrow">
						<td>19.05.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>05</td>
					</tr>
					
					<tr class="trrow">
						<td>19.04.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>04</td>
					</tr>
					
					<tr class="trrow">
						<td>19.03.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>03</td>
					</tr>
					
					<tr class="trrow">
						<td>19.02.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>02</td>
					</tr>
					
					<tr class="trrow">
						<td>19.01.01</td>
						<td>하여가 적금 자동출금</td>
						<td>55,000</td>
						<td>01</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
</div>


<!-- <footer> -->
	<jsp:include page = "footer.jsp" flush="true"></jsp:include>
<!-- </footer> -->
</body>
</html>