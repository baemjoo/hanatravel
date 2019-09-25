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
  color: #000000;
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

<!-- <header> -->
	<jsp:include page = "header.jsp" flush="true"></jsp:include>
<!-- </header> -->


<div id="container">

	<!-- <header> -->
		<jsp:include page = "groupheader.jsp" flush="true"></jsp:include>
	<!-- </header> -->
	
	<div class="topnav">
	  <a href="a3.jsp" >그룹 적금 현황</a>
	  <a href="a4.jsp" >나의 적금 현황</a>
	  <a href="a5.jsp">여행 경비 사용 현황</a>
	  <a href="a6.jsp" class="active">여행 정보</a>
	  <a href="a7.jsp">손님후기</a>
	</div>


	<div id="content">
		<table>
			<tr style="width:100%;">
				<td style="width:23%"><img style="max-width:100%" src="../image/travelInfoImage/jaka1.png"></img></td>
				<td style="width:23%"><img style="max-width:100%"src="../image/travelInfoImage/jaka2.png"></img></td>
				<td style="width:23%"><img style="max-width:100%" src="../image/travelInfoImage/jaka3.png"></img></td>
				<td style="width:23%"><img style="max-width:100%" src="../image/travelInfoImage/jaka4.png"></img></td>
			</tr>
			<tr>
				<td style="width:25%"><img src="../image/travelInfoImage/jaka5.png"></img></td>
				<td style="width:25%"><img src="../image/travelInfoImage/jaka6.png"></img></td>
				<td style="width:25%"><img src="../image/travelInfoImage/jaka7.png"></img></td>
				<td style="width:25%"><img src="../image/travelInfoImage/jaka8.png"></img></td>
			</tr>
		</table>
	</div>
</div>



<!-- <footer> -->
	<jsp:include page = "footer.jsp" flush="true"></jsp:include>
<!-- </footer> -->
</body>
</html>