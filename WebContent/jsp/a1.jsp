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
		
		button{
		  background:#1AAB8A;
		  color:#fff;
		  border:none;
		  position:relative;
		  height:80%;
		  font-size:1.6em;
		  padding:0 2em;
		  cursor:pointer;
		  transition:800ms ease all;
		  outline:none;
		}
		button:hover{
		  background:#fff;
		  color:#1AAB8A;
		}
		button:before,button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:8%;
		  width:0;
		  background: #1AAB8A;
		  transition:400ms ease all;
		}
		button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
		button:hover:before,button:hover:after{
		  width:100%;
		  transition:800ms ease all;
		}
	</style>
</head>

<script>
function makegroup(){
	
	location.href = "a2.jsp";
	
}
</script>
<body>
<!-- <header> -->
	<jsp:include page = "header.jsp" flush="true"></jsp:include>
<!-- </header> -->

	<div id="container">
	
	    <div id="inner_container" style="width:100%;">
	    	<div id="service_introduction">
				<img src="../image/service_introduction.png" style="max-width:100%; border:2px solid lightgray;"/>
	    	</div>
	    	<div id="service_summary">
				<div id="service_text" style="position:relative; height:150px; border:2px solid lightgray; margin-top:10px;">
					<h1 class="summary_text1" style="margin-left:30px;">김하나님의 여행적금 참여내역</h1>
					<h3 class="summary_text2" align="right" style="margin-right:30px;">그룹가입현황 04 | 이번달 적금예정내역 03 (적금 성공 01 | 실패 01)</h3>
				</div>	
	    	</div>
	    	<div id="service_main" style="position:relative; width:100%; height:auto; border:2px solid lightgray; margin-top:10px;">
		    	<div class="topnav">
					<a href="" class="active">적금 진행중</a>
					<a href="">적금 완료</a>
					<a href="">여행중</a>
					<a href="">여행 완료</a>
				</div>
				
		    	<div id="list_section" style="position:relative; width:100%; height:auto; border:2px solid lightgray; float: left;">
			    	<div id="new_field" align="right" style="height:50px; border:2px solid lightgray; margin:5px;">
			    		<button type="button" onclick="makegroup()">그룹 생성하기</button>
			    	</div>
			    	<div id="group_field" style="width:100%: height:auto; border:2px solid lightgray; margin:5px;">
<!-- 			    		그룹별로 클릭 시 그룹 상세 내역 접근 필요 -->
			    		<div style="height:auto; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">금융이랑 하금티랑 자카르타 여행</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정: 19.11.01 ~ 19.11.05 (자카르타/인도네시아)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 03 | 목표액 1,320,000원 (각 440,000원) | 진행현황 90% (1,188,000원)</h4>
			    		</div>
			    		<div style="height:auto; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">가족 여행</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : 20.02.09 ~ 20.02.16 (벤쿠버/캐나다)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 03 | 목표액 8,400,000원 (각 2,800,000원) | 진행현황 45% (3,780,000원)</h4>
			    		</div>
			    		<div style="height:auto; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">하나고 친구들과 미국 서부 일주</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : 20.12.21 ~ 21.01.11 (LA 외 2개 도시)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 04 | 목표액 30,120,000원 (각 7,530,000원) | 진행현황 10% (3,012,000원)</h4>
			    		</div>
			    		<div style="height:auto; background-color:coral; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">하금티와 더블 커플 여행</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : 19.08.15 ~ 19.08.18 (푸켓/태국)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 04 | 목표액 3,800,000원 (각 950,000원) | 진행현황 40% (1,520,000원)</h4>
			    		</div>
			    		<div style="height:auto; background-color:lightgray; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">박금융과 제주도 여행</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : 17.05.07 ~ 17.05.11 (제주도/한국)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 02 | 목표액 1,040,000원 (각 520,000원) | 진행현황 100% (1,040,000원)</h4>
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
	<jsp:include page = "footer.jsp" flush="true"></jsp:include>
<!-- </footer> -->
</body>
</html>
