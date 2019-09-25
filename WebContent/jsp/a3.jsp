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
    background: url(../image/airplane.png);
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
	width:90%;
	min-height:50px;
	margin:3%;
	display:inline-block;
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
.userdiv{
	width:100%;
	height:50px;
	margin:1%;
	clear: both;
	display:flex;
}
.userdiv-progress{
	margin:2%;
	width:80%;	
	height:30px;
	float:left;
}
.userdiv-button{
	width:10%;	
	height:30px;
	float:left;
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
    z-index: 2;
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
    z-index: 0;
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


		.smallbtn{
			width:100%;
			background:#1AAB8A;
			color:#fff;
			border:none;
		}
		.smallbtn:hover{
			background:#fff;
			color:#1AAB8A;
			border:none;
		}


.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 3; /* Sit on top */
  padding-top: 90px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    transition:visibility 0s linear 0.1s,opacity 0.3s ease;
}

/* Modal Content */
.modal-content {

  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  text-align:center;
  border: 7px double rgba(28,110,164,0.24);
  border-radius: 17px;
  width: 80%;
  height:300px;
}

#ModalContainer{
	padding:20px;
    z-index: 4;
    transform: translateY(-50%); 
    box-shadow:  0 0 10px #fff;
    background-color: #fff;
    text-align: center;
}
/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

</style>
<script>

function remit(){
	
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
	  <a href="a3.jsp" class="active">그룹 적금 현황</a>
	  <a href="a4.jsp" >나의 적금 현황</a>
	  <a href="a5.jsp">여행 경비 사용 현황</a>
	  <a href="a6.jsp">여행 정보</a>
	  <a href="a7.jsp">손님후기</a>
	</div>


	<div id="content">
	
		<div class="usercontent">
			<div class="contentheader">
				<h4>1등 : 김하나님 (440,000원)</h4>
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
		        <input type="button" class="smallbtn" value="REWARD" onclick="rewardClick()">
		    </div>
		     <div class="userdiv-button">
		        <input type="button" class="smallbtn" value="송금" onclick="remitclick()">
		    </div>
		    </div>
		</div>
		
		<div class="usercontent">
			<div class="contentheader">
				<h4>2등 : 하금티님 (440,000원)</h4>
			</div>
			
			<div class="userdiv">
			<div class="userdiv-progress">
		        <div class="userprogress orange">
				    <div class="userprogress-bar" style="width:100%; height:20px; background-color:#fe3b3b;">
				    	<span class="progress-icon fa fa-globe"></span>
				    	<div class="progress-value"><span>100</span>%</div>
				     </div>
		        </div>	
			</div>
			
		    <div class="userdiv-button">
		        <input type="button" class="smallbtn" value="REWARD" onclick="rewardClick()">
		    </div>
		     <div class="userdiv-button">
		        <input type="button" class="smallbtn" value="송금" onclick="remitclick()">
		    </div>
		    </div>
		</div>
			
		<div class="usercontent">
			<div class="contentheader">
				<h4>3등 : 박금융님 (308,000원)</h4>
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
			
		    </div>
		</div>
		
	<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div id="ModalContent" class="modal-content">
		<div id="ModalContainer">
			
			<div style=" margin:20px; width:40%; height:300px;  float:left; background-size: 100%;">
				<img src="../image/reward1.png" style="max-width: 100%; height:auto"/>
				두니아 놀이공원 티켓
			</div>
			<div style=" margin-top:20px; margin-left:40px; width:40%; height:300px;  float:left; background-size: 100%;">
				<img src="../image/reward2.jpg" style="max-width: 100%; height:auto"/>
				우대금리
			</div>
		</div>
	  </div>
	</div>
	
	<!-- The Modal -->
	<div id="myModal2" class="modal">
	
	  <!-- Modal content -->
	  <div id="ModalContent" class="modal-content">
		<div id="ModalContainer" >
			
			<div style=" margin:20px; width:80%; height:auto;  float:left; background-size: 100%;">
				<img src="../image/alert.png" style="width: 100%; height:auto"/>
			</div>
		</div>
	  </div>
	</div>
	

</div>
		
</div>


<!-- <footer> -->
	<jsp:include page = "footer.jsp" flush="true"></jsp:include>
<!-- </footer> -->
</body>
<script>
	var modal = document.getElementById("myModal");
	
	function rewardClick(){
	    // do something
		modal.style.display = "block";
	    
	}	//When the user clicks the button, open the modal
	
	var modal2 = document.getElementById("myModal2");
	function remitclick(){
	    // do something
		modal2.style.display = "block";
	    
	}	
	
	window.onclick = function(event) {
		if (event.target == modal || event.target == modal2) {
		 modal.style.display = "none";
		 modal2.style.display = "none";
		}
	};
	
	
//When the user clicks the button, open the modal


</script>
</html>