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
	width:80%;
    height: 20px;
    margin-top:50px;
    background: #27b2a5;
    border-radius: 15px;
    margin-bottom: 30px;
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

.userdiv{
	width:90%;
	height:50px;
	margin:1%;
	display:inline-block;
}
.userdiv-progress{
	margin:2%;
	width:80%;	
	height:30px;
	float:left
}
.userdiv-button{
	margin:2%;
	width:10%;	
	height:30px;
	float:left
}
.progress-title{
    font-size: 18px;
    font-weight: 700;
    color: #333;
    text-transform: uppercase;
    margin: 0 0 25px;
}
.userprogress{
	max-width:100%;
    height: 10px;
    background: #e9e9ea;
    border-radius: 15px;
    margin-bottom: 30px;
    overflow: visible;
    position: relative;
}
.userprogress:before,
.userprogress:after{
    content: "";
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background: #fff;
    position: absolute;
    top: -5px;
    left: 0;
    z-index: 1;
}
.userprogress:after{
    border: 7px solid #e9e9ea;
    left: auto;
    right: 0;
}
.userprogress .userprogress-bar{
    box-shadow: none;
    border: none;
    border-radius: 15px;
    position: relative;
    -webkit-animation: animate-positive 1s;
    animation: animate-positive 1s;
}
.userprogress .progress-value{
    width: 70px;
    height: 35px;
    line-height: 27px;
    border-radius: 20px;
    background: #fff;
    font-size: 17px;
    font-weight: 600;
    text-align:center;
    position: absolute;
    top: -12px;
    right: 0;
    z-index: 2;
}
.userprogress.orange:before{ border: 7px solid #fe3b3b; }
.userprogress.blue:before{ border: 7px solid #1a4966; }
.userprogress.green:before{ border: 7px solid #53aa2c; }
.userprogress.purple:before{ border: 7px solid #66406f; }

.userprogree.orange .userprogress-bar{
	background-color:#fe3b3b;
}

.userprogree.blue .userprogress-bar{
	background-color:#1a4966;
}


.userprogress.orange .progress-value{
    border: 5px solid #fe3b3b;
    color: #fe3b3b;
}
.userprogress.blue .progress-value{
    border: 5px solid #1a4966;
    color: #1a4966;
}
.userprogress.green .progress-value{
    border: 5px solid #53aa2c;
    color: #53aa2c;
}
.userprogress.purple .progress-value{
    border: 5px solid #66406f;
    color: #66406f;
}
@-webkit-keyframes animate-positive{
    0%{ width: 0; }
}
@keyframes animate-positive{
    0%{ width: 0; }
}

</style>
</head>

<body>

<%-- <jsp:include page="/WEB-INF/jsp/include/header.jsp"/> --%>


<div id="container">

	<div id="header">
		<h1>그룹 메인 사진 및 그룹 명칭</h1>
		
			<div id="bar-div">   
				<div class="prog_div">
		           	<div class="groupprogress">
		                <div class="progress-bar" style="width:80%; "></div>
		            </div>
	            </div>
			</div>	
	</div>
	
	<div class="topnav">
	  <a href="part4_1.jsp" class="active">그룹 적금 현황</a>
	  <a href="part4_2.jsp" >나의 적금 현황</a>
	  <a href="part4_3.jsp">여행 경비 사용 현황</a>
	  <a href="part4_4.jsp">여행 정보</a>
	  <a href="part4_5.jsp">그룹 관리</a>
	</div>


	<div id="content">
	
		<div class="usercontent">
			<div class="contentheader">
				<h4>1등 : XXX님 (nn원)</h4>
			</div>
			
			<div class="userdiv">
			<div class="userdiv-progress">
		        <div class="userprogress blue">
				    <div class="userprogress-bar" style="width:100%; height:20px; background-color:#1f75c4;">
				    	<span class="progress-icon fa fa-globe"></span>
				    	<div class="progress-value"><span>100</span>%</div>
				     </div>
		        </div>	
			</div>
	
			<!-- 100%달성시 button 노출 -->
		    <div class="userdiv-button">
		        <input type="button" value="REWARD">
		    </div>
		    </div>
		</div>
		
		<div class="usercontent">
			<div class="contentheader">
				<h4>2등 : XXX님 (nn원)</h4>
			</div>
			
			<div class="userdiv">
			<div class="userdiv-progress">
		        <div class="userprogress orange">
				    <div class="userprogress-bar" style="width:80%; height:20px; background-color:#fe3b3b;">
				    	<span class="progress-icon fa fa-globe"></span>
				    	<div class="progress-value"><span>80</span>%</div>
				     </div>
		        </div>	
			</div>
			
		    <div class="userdiv-button">
		        <input type="button" value="REWARD">
		    </div>
		    </div>
		</div>
		
		
		<div class="usercontent">
			<div class="contentheader">
				<h4>3등 : XXX님 (nn원)</h4>
			</div>
			
			<div class="userdiv">
			<div class="userdiv-progress">
		        <div class="userprogress green">
				    <div class="userprogress-bar" style="width:65%; height:20px; background-color:#53aa2c;">
				    	<span class="progress-icon fa fa-globe"></span>
				    	<div class="progress-value"><span>65</span>%</div>
				     </div>
		        </div>	
			</div>
			
		    <div class="userdiv-button">
		        <input type="button" value="REWARD">
		    </div>
		    </div>
		</div>
		
		
		
		<div class="usercontent">
			<div class="contentheader">
				<h4>4등 : XXX (nn원)</h4>
			</div>
			
			<div class="userdiv">
			<div class="userdiv-progress">
		        <div class="userprogress purple">
				    <div class="userprogress-bar" style="width:15%; height:20px; background-color:#66406f;">
				    	<span class="progress-icon fa fa-globe"></span>
				    	<div class="progress-value"><span>15</span>%</div>
				     </div>
		        </div>	
			</div>
			
		    <div class="userdiv-button">
		        <input type="button" value="REWARD">
		    </div>
		    </div>
		</div>
		
		
	</div>
</div>
<a href="CreateTravelGroup.jsp">페이지1</a>
<a href="GetAgreements.jsp">페이지2</a>
<a href="InputTravelConditions.jsp">페이지3</a>
<%-- <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/> --%>

</body>
</html>