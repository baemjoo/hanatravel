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

#nav{
	max-width: 100%;
    margin: 10px auto;
    padding: 20px;
    border: 1px solid #bcbcbc;
}



#content{
	max-width: 100%;
    margin: 10px auto;
    padding: 20px;
    border: 1px solid #bcbcbc;
}

#content .usercontent{
	max-width:100%;
	margin: 10px auto;
    padding: 10px;
    border: 1px solid #bcbcbc;
    text-align:left;
}

.usercontent > li {
	max-width:100%;
	padding:10px;
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
  color: #27b2a5;
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
	  <a href="part4_3.jsp">여행 경비 사용 현황</a>
	  <a href="part4_4.jsp">여행 정보</a>
	  <a href="part4_5.jsp"  class="active">그룹 관리</a>
	</div>


	<div id="content">
		<div class="usercontent">
		<ul>
			<li>전체 적금내역 (nn% | nn원)</li>
			<li><progress class="progressTag" value="50" max="100"></progress></li>
		</ul>
			
		</div>
		<div class="usercontent">
		<ul>
			<li>1등 : XXX (nn% | nn원)</li>
			<li><progress class="progressTag" value="50" max="100"></progress></li>
		</ul>
		</div>
		
		<div class="usercontent">
		<ul>
			<li>2등 : XXX (nn% | nn원)</li>
			<li><progress class="progressTag" value="50" max="100"></progress></li>
		</ul>
		</div>
	</div>
</div>


<%-- <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/> --%>

</body>
</html>