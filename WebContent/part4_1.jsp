<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">




<title>여행HANA</title>
<!--
 <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/basic.css">
 -->
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
</style>
</head>

<body>

<%-- <jsp:include page="/WEB-INF/jsp/include/header.jsp"/> --%>


<div id="container">

	<div id="header">
		<h1>그룹 메인 사진 및 그룹 명칭</h1>
		
		<div id="bar-div">
			<progress class="ForWhat" value="50" max="100"></progress>	
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
	<span style="display:inline-block; width:15%;"><h3>2019년</h3></span>
	<span style="display:inline-block; width:2%;"><h3 id="date" style="display:clock">1</h3></span>
	<span style="display:inline-block; width:15%;"><h3>월</h3></span>


		<div class="usercontent">
			<div class="contentheader">
				전체 적금내역 (nn% | nn원)
			</div>
			<div class="contentbar">
				<progress class="progressTag" value="0" max="100"></progress>
			</div>
		</div>
		<div class="usercontent">
			<div class="contentheader">
				1등 : XXX (nn% | nn원)
			</div>
			<div class="contentbar">
				<progress id="myProgress" class="progressTag" value="0" max="100"></progress>			
			</div>
		</div>
		
		<div class="usercontent">
			<div class="contentheader">
				2등 : XXX (nn% | nn원)
			</div>
			<div class="contentbar">
				<progress class="progressTag" value="10" max="100"></progress>			
			</div>
		</div>
		<div id="container"></div>
	</div>
	<button onclick="myFunction()">Try it</button>
</div>
<a href="CreateTravelGroup.jsp">페이지1</a>
<a href="GetAgreements.jsp">페이지2</a>
<a href="InputTravelConditions.jsp">페이지3</a>
<%-- <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/> --%>

<span style="width=50px"><h4>가나다라마바사</h4></span><span style="width=100px"><h4>가나다라마바사</h4></span>
<h4>가나다라마바사</h4>
</body>

<script>
function myFunction() {
	  
	  var max = document.getElementById("myProgress").max;
	  
	  var value = document.getElementById("myProgress").value;
	  
	  var id = setInterval(frame, 20);

	  var bars = document.getElementsByClassName("progressTag");
	  
	  var avg = bars[0].value;
	  
	  
	  
	  function frame() {
	    if (bars[0].value > 100 ) {
	    	
	      clearInterval(id);
	      
	    } else {
	    	
	    	var month = Number(document.getElementById("date").innerHTML);
	    	
	    	
	    	var sum = 0;
	    	
	    	for(var i=1; i < bars.length ; i++){
	    		if(bars[i].value <100){
	    			bars[i].value += 1;
	    		}
	    		sum += bars[i].value;
	    	}
	    	
	    	bars[0].value = parseInt(sum / (bars.length-1));
	    	
	    	document.getElementById("date").innerHTML = parseInt(parseInt(document.getElementById("myProgress").value / 10) / 12);
	    	
	    
	    }
	  }
  
	}
</script>
</html>
