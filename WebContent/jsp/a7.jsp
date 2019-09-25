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
    text-align:center;
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


.tablediv{
	width:80%;
	margin:0 auto;
	text-align:center;
}
.inadvicetablelist{
	width:100%;
	border-style:none;
}

.inadvicetablelist .trrow{
	cursor:pointer;
	border-bottom:1px solid #dadada;
}

.inadvicetablelist .trrow:hover{
	cursor:pointer;
	background-color:#d5eff4;
}

.inadvicetablelist .thead{
	border-top: 2px solid #34afb9;
	border-left: #f4f4f4;
	border-right: #f4f4f4;
	border-bottom:1px solid #808080;
	background-color:#f4f4f4;
	text-align:center;
	vertical-align: middle;
	font-size:25px;
}


.inadvicetabletd1{
	height:auto;
	text-align:center;
	padding:2%;
	border-left:none;
	border-right:none;
	border-bottom:1px solid #808080;
}

.inadvicetabletd1img{
	height:auto;
	text-align:center;
	border-left:none;
	border-right:none;
	border-bottom:1px solid #808080;
}


.inadvicetabletd1 > .td1img{
	width:100%; 
	height:auto;
}

.inadvicetabletd1 > .td1txt{
	font-size:18px;
	font-weight:bold;
}

.inadvicetabletd1 > .td3txt{
	font-size:18px;
	font-weight:bold;
	text-align:left;
}

.inadvicetabletd2>a{
	color:#000;
}

.inadvicetabletd2>a:link{
	text-decoration: none;
}

.inadvicetabletd2>a:hover{
	color:#27b2a5;
}


.adddiv{
	width:80%;
	min-height:80px;
	margin-top : 50px;
	text-align:left;
	display:inline-block;
}

.addtext{
	width:80%;
	min-height:80px;
	float:left;
	font-size:20px;
}

.addbtn{
	margin-left:2%;
	width:17%;
	height:auto;
	float:left;
}

.addfile{
	margin-top:1%;
	height:auto;
	float:left;
}
.memoAddfile{
    margin-top: 40px;
    width:30%;
    height:auto;
    text-align:center;
}

.memoAddfile label {
	margin-left:10px;]
    position:relative;
    cursor:pointer;
    display:inline-block;
    vertical-align:middle;
    overflow:hidden;
    width:100px;
    height:30px;
    background:#27b2a5;
    color:#fff;
    text-align:center;
    line-height:30px;
}

.memoAddfile label input {
    position:absolute;
    width:0;
    height:0;
    overflow:hidden;
}
.memoAddfile input[type=text] {
    vertical-align:middle;
    display:inline-block;
    width:200px;
    height:30px;
    line-height:25px;
    font-size:12px;
    padding:0px;
    border:0;
    border:1px solid #D8D8D8;
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

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>

function insertmemo(){
	
	var addtext = document.getElementById("addtext").value;
	$('#reviewtab > tbody').append('<tr class="trrow"><td class="inadvicetabletd1"><div class="td1txt">3</div></td><td class="inadvicetabletd1img"><div class="td1img"><img src="../image/Jakarta.jpg"/></div></td><td class="inadvicetabletd1"><div class="td3txt">'+addtext+'</div></td></tr>');
	document.getElementById("addtext").value = "";
	
	
}


</script>
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
	  <a href="a6.jsp">여행 정보</a>
	  <a href="a7.jsp" class="active">손님후기</a>
	</div>


	<div id="content">
	
		<div class="tablediv">
		
			<table class="inadvicetablelist" id="reviewtab">
			
				<thead>
					<tr>
						<th style="width:10%" class="thead">No</th>
						<th style="width:30%" class="thead">장소</th>
						<th style="width:60%" class="thead">후기</th>
					</tr>
				</thead>
				
				<tbody>
				
					<tr class="trrow">
						<td class="inadvicetabletd1">
							<div class="td1txt">1</div>
						</td>
						
						<td class="inadvicetabletd1img">
							<div class="td1img">
								<img src="../image/hongkong.jpg"/>
							</div>
						</td>
						
						<td class="inadvicetabletd1">
							<div class="td3txt">
								홍콩에서 쇼핑을 했어요.
							</div>
						</td>	
					</tr>
					
					
					<tr class="trrow">
						<td class="inadvicetabletd1">
							<div class="td1txt">2</div>
						</td>
						
						<td class="inadvicetabletd1img">
							<div class="td1img">
								<img src="../image/Manila.jpg"/>
							</div>
						</td>
						
						<td class="inadvicetabletd1">
							<div class="td3txt">
								마닐라에 바닐라 아이스크림이 맛있어요.
							</div>
						</td>	
					</tr>
					
				</tbody>
				
			</table>
		
		</div>
		
		
		<div class="adddiv">
			<div>
				<textarea id="addtext" name="addtext" class="addtext"></textarea>
			</div>
			
			<div class="addbtn">
				<input type="button" class="smallbtn" value="등록" style="min-width:100%; min-height:80px;" onclick="insertmemo()">
			</div>
			
			<div class="addfile">
				<input type="file" style="min-width:100%; min-height:80px;">
			</div>
		</div>
	</div>
</div>



<!-- <footer> -->
	<jsp:include page = "footer.jsp" flush="true"></jsp:include>
<!-- </footer> -->
</body>
</html>