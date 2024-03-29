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


.progress{

	width:80%;
    height: 20px;
    margin-top:50px;
    background: #27b2a5;
    border-radius: 15px;
    margin-bottom: 30px;
    overflow: visible;
    position: relative;
    
}
.progress .progress-bar{
    height: 20px;
    background-color:red;
    border-radius: 15px;
    box-shadow: none;
    position: relative;
    animation: animate-positive 2s;
}
.progress .progress-bar:after{

    display:block;
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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js">
$(document).ready(function(){
    $('.progress-value > span').each(function(){
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        },{
            duration: 1500,
            easing: 'swing',
            step: function (now){
                $(this).text(Math.ceil(now));
            }
        });
    });
});

</script>
 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<script>

function addUser(username,age,cellphone){
	
	$("#"+username).remove();
	$('#membergroup > tbody').append('<tr id="'+username+'" class="trrow"><td>'+username+'</td><td>'+age+'</td><td>'+cellphone+'</td><td><input type="button" value="삭제하기" onclick="delUser(\''+username+'\','+age+',\''+cellphone+'\');"></td></tr>');
}

function delUser(username,age,cellphone){
	
	$("#"+username).remove();
	$('#usergroup > tbody').append('<tr id="'+username+'" class="trrow"><td>'+username+'</td><td>'+age+'</td><td>'+cellphone+'</td><td><input type="button" value="추가하기" onclick="addUser(\''+username+'\','+age+',\''+cellphone+'\');"></td></tr>');
}


</script>
<body>

<%-- <jsp:include page="/WEB-INF/jsp/include/header.jsp"/> --%>


<div id="container">

	<div id="header">
		<h1>그룹 메인 사진 및 그룹 명칭</h1>
		
		<div id="bar-div">
		
			<h3 class="progress-title">그룹 달성 현황</h3>
            <!-- <div class="progress">
                <div class="progress-bar" style="width:65%;">
                    <span class="progress-icon fa fa-globe"></span>
                    <div class="progress-value"><span><img src="airplane.png" style="width:50px;height:50px;"></span></div>
                </div>
            </div> -->
                
                
           	<div class="progress">
                <div class="progress-bar" style="width:0%;"></div>
            </div>
            
		</div>
	
	</div>
	
	<div class="topnav">
	  <a href="part4_1.jsp" >그룹 적금 현황</a>
	  <a href="part4_2.jsp">나의 적금 현황</a>
	  <a href="part4_3.jsp">여행 경비 사용 현황</a>
	  <a href="part4_4.jsp">여행 정보</a>
	  <a href="part4_5.jsp">그룹 관리</a>
	</div>


	<div id="content">
		<div class="usercontent2">
			<div class="usercontentheader">
				멤버 초대 현황
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
				멤버 리스트 현황
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
					<tr id="홍길동" class="trrow">
						<td>홍길동</td>
						<td>24</td>
						<td>XXX-XXXX-XXX1</td>
						<td><input type="button" value="추가하기" onclick="addUser('홍길동','24','XXX-XXXX-XXX1')"></td>
					</tr>
					
					<tr id="홍길구" class="trrow">
						<td>홍길구</td>
						<td>25</td>
						<td>XXX-XXXX-XXX2</td>
						<td><input type="button" value="추가하기" onclick="addUser('홍길구','25','XXX-XXXX-XXX2')"></td>
					</tr>
					
					<tr id="홍길순" class="trrow">
						<td>홍길순</td>
						<td>26</td>
						<td>XXX-XXXX-XXX3</td>
						<td><input type="button" value="추가하기" onclick="addUser('홍길순','26','XXX-XXXX-XXX3')"></td>
					</tr>
					
				</tbody>
			</table>
			
		</div>
	</div>
</div>


<%-- <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/> --%>

</body>
</html>