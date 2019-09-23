<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%
//		세션으로부터 아이디 및 이름을 받아보자!
// 		String userId = (String)session.getAttribute("sessionId");					//아이디
// 		String userName = (String)session.getAttribute("sessionName");				//이름
// 		String userGroupNum = (String)session.getAttribute("sessionGroupNum");		//그룹가입현황
// 		String userSavingNum = (String)session.getAttribute("sessionSavingNum");	//적금예정내역
// 		String userSavingOk = (String)session.getAttribute("sessionSavingOk");		//적금성공
// 		String userSavingFail = (String)session.getAttribute("sessionSavingFail");	//적금실패
	%>
</head>
<body>
<!-- <header> -->
<%-- 	<jsp:include page = "header.jsp" flush="true"></jsp:include> --%>
<!-- </header> -->
	<div id="outer_container">
	    <div id="inner_container" style="width:300px;">
	    	<div id="service_introduction">
				<img src="service_introduction.png" style="width:300px; border:2px solid lightgray;"/>
	    	</div>
	    	<div id="service_summary">
				<div id="service_text" style="position:relative; height:150px; border:2px solid lightgray; margin-top:10px;">
					<h3 class="summary_text1" style="margin-left:10px;">OOO님의 여행적금 참여내역</h3>
					<h5 class="summary_text2" align="right" style="margin:0 10px 0 0;">그룹가입현황 00</h5>
					<h5 class="summary_text2" align="right" style="margin:0 10px 0 0;">이번달 적금예정내역 00</h5>
					<h5 class="summary_text2" align="right" style="margin:0 10px 0 0;">적금 성공 00 | 실패 00</h5>
				</div>	
	    	</div>
	    	<div id="service_main" style="position:relative; height:1050px; border:2px solid lightgray; margin-top:10px;">
		    	<div id="filter_section" align="right" style="position:relative; width:270px; height:20px; border:2px solid lightgray; margin:10px;">
<!-- 		    		클릭 시 js 통해 해당 영역으로 스크롤 이동 -->
		    		<h6 style="margin:0px;">적금진행중 | 적금완료 | 여행중 | 여행완료</h6>
		    	</div>
		    	<div id="list_section" style="position:relative; width:270px; height:985px; border:2px solid lightgray; margin:10px;">
			    	<div id="new_field" align="right" style="height:50px; border:2px solid lightgray; margin:5px;">
			    		<button type="button" style="margin:10px; height:30px; width:100px;">그룹 생성하기</button>
			    	</div>
			    	<div id="group_field" style="height:850px; border:2px solid lightgray; margin:5px;">
<!-- 			    		그룹별로 클릭 시 그룹 상세 내역 접근 필요 -->
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">제목 영역</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">(OOOOO 외 n개 도시)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여인원 nn</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액 000,000원 (각 000,000원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 nn% (000,000원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">제목 영역</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">(OOOOO 외 n개 도시)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여인원 nn</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액 000,000원 (각 000,000원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 nn% (000,000원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">제목 영역</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">(OOOOO 외 n개 도시)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여인원 nn</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액 000,000원 (각 000,000원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 nn% (000,000원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">제목 영역</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">(OOOOO 외 n개 도시)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여인원 nn</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액 000,000원 (각 000,000원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 nn% (000,000원)</h6>
			    		</div>
			    		<div style="height:160px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:10px;">제목 영역</h2>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd</h6>
							<h6 class="group_text2" align="right" style="margin:0 10px 0 0;">(OOOOO 외 n개 도시)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">참여인원 nn</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">목표액 000,000원 (각 000,000원)</h6>
							<h6 class="group_text3" align="right" style="margin:0 10px 0 0;">진행현황 nn% (000,000원)</h6>
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
