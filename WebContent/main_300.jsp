<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행HANA</title>
	<%
//		세션으로부터 아이디 및 이름을 받아보자!
// 		String userId = (String)session.getAttribute("sessionId");					//아이디
// 		String userName = (String)session.getAttribute("sessionName");				//이름
// 		String userGroupNum = (String)session.getAttribute("sessionGroupNum");		//그룹가입현황
// 		String userSavingNum = (String)session.getAttribute("sessionSavingNum");	//적금예정내역
// 		String userSavingOk = (String)session.getAttribute("sessionSavingOk");		//적금성공
// 		String userSavingFail = (String)session.getAttribute("sessionSavingFail");	//적금실패
	%>
	
	<style type="text/css">
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
	</style>
</head>
<body>
<!-- <header> -->
<%-- 	<jsp:include page = "header.jsp" flush="true"></jsp:include> --%>
<!-- </header> -->
	<div id="outer_container">
	    <div id="inner_container" style="width:480px;">
	    	<div id="service_introduction">
				<img src="image/service_introduction_480.png" style="width:480px; border:2px solid lightgray;"/>
	    	</div>
	    	<div id="service_summary">
				<div id="service_text" style="position:relative; height:150px; border:2px solid lightgray; margin-top:10px;">
					<h3 class="summary_text1" style="margin-left:10px;">김하나님의 여행적금 참여내역</h3>
					<h5 class="summary_text2" align="right" style="margin:0 10px 0 0;">그룹가입현황 04</h5>
					<h5 class="summary_text2" align="right" style="margin:0 10px 0 0;">이번달 적금예정내역 03</h5>
					<h5 class="summary_text2" align="right" style="margin:0 10px 0 0;">적금 성공 01 | 실패 01</h5>
				</div>	
	    	</div>
	    	<div id="service_main" style="position:relative; height:1050px; border:2px solid lightgray; margin-top:10px;">
		    	<div class="topnav">
					<a href="" class="active">적금 진행중</a>
					<a href="">적금 완료</a>
					<a href="">여행중</a>
					<a href="">여행 완료</a>
				</div>
		    	<div id="list_section" style="position:relative; width:450px; height:985px; border:2px solid lightgray; margin:10px;">
			    	<div id="new_field" align="right" style="height:50px; border:2px solid lightgray; margin:5px;">
			    		<button type="button" style="margin:10px; height:30px; width:100px;">그룹 생성하기</button>
			    	</div>
			    	<div id="group_field" style="height:850px; border:2px solid lightgray; margin:5px;">
<!-- 			    		그룹별로 클릭 시 그룹 상세 내역 접근 필요 -->
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">박금융과 다낭여행</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정: 19.10.01 ~ 19.10.05</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 도시: 다낭(베트남)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여 인원: 2</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액: 815,458원 (각 407,729원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 90% (733,912원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">하나고 친구들과 미국 서부 일주</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정: 20.12.21 ~ 21.01.11</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 도시: LA(미국) 외 2개 도시</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여 인원: 4</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액: 30,120,000원 (각 7,530,000원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 10% (3,012,000원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">가족 여행</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정: 20.02.09 ~ 20.02.16</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 도시: 벤쿠버 (캐나다)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여 인원: 3 </h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액: 8,281,680원 (각 2,760,560원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 45% (5,383,092원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:coral; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">하금티와 더블 커플 여행</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정: 19.08.15 ~ 19.08.18</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 도시: 푸켓(태국)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여 인원: 4</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액: 3,743,120원 (각 935,780원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 40% (1,497,248원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightgray; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">박금융과 제주도 여행</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정: 17.05.07 ~ 17.05.11</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 도시: 제주도(한국)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여 인원: 2</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액: 1,032,432원 (각 516,216원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 100% (1,032,432원)</h6>
			    		</div>
			    	</div>
			    	<div id="pagenation_field" align="center" style="height:50px; border:2px solid lightgray; margin:5px;">
<!-- 			    		페이지네이션 적용 필요 영역 -->
			    		<h4>1 2 3 4 5 6 7 8 9 10 ▶</h4>
			    	</div>
		    	</div>
	    	</div>
        </div>
	</div>
<!-- <footer> -->
<%-- 	<jsp:include page = "footer.jsp" flush="true"></jsp:include> --%>
<!-- </footer> -->
</body>
</html>
