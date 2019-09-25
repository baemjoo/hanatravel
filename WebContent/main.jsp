<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>

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
      
#content{
	max-width: 100%;
    margin: 10px auto;
    padding: 20px;
    border: 1px solid #bcbcbc;
}

#container{
	max-width:100%;
	margin: 10px auto;
    padding: 20px;
    border: 1px solid #bcbcbc;
}

.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 30px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
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

}

</style>

<link href="https://fonts.googleapis.com/css?family=Raleway:400,300,600,800,900" rel="stylesheet" type="text/css">
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
	    <div id="inner_content"  style="width:1200px;">
	    	<div id="service_introduction">
				<img src="image/service_introduction.png" style="width:1200px; border:2px solid lightgray;"/>
	    	</div>
	    	<div id="service_summary">
				<div id="service_text" style="position:relative; height:150px; border:2px solid lightgray; margin-top:10px;">
					<h1 class="summary_text1" style="margin-left:30px;">OOO님의 여행적금 참여내역</h1>
					<h3 class="summary_text2" align="right" style="margin-right:30px;">그룹가입현황 00 | 이번달 적금예정내역 00 (적금 성공 00 | 실패 00)</h3>
				</div>	
	    	</div>
	    	<div id="service_main" style="position:relative; height:860px; border:2px solid lightgray; margin-top:10px;">
		    	<div id="filter_section" style="position:relative; width:200px; height:200px; border:2px solid lightgray; margin:10px; float: left;">
<!-- 		    		클릭 시 js 통해 해당 영역으로 스크롤 이동 -->
		    		<h3 style="margin-left:15px; color:#12a9a0;">적금진행중</h3>
		    		<h3 style="margin-left:15px; color:gray;">적금완료</h3>
		    		<h3 style="margin-left:15px; color:gray;">여행중</h3>
		    		<h3 style="margin-left:15px; color:gray;">여행완료 </h3>
		    	</div>
		    	<div id="list_section" style="position:relative; width:945px; height:835px; border:2px solid lightgray; margin:10px; float: left;">
			    	<div id="new_field" align="right" style="height:50px; border:2px solid lightgray; margin:5px;">
			    		<button type="button" style="margin:10px; height:30px; width:100px;">그룹 생성하기</button>
			    	</div>
			    	<div id="group_field" style="height:700px; border:2px solid lightgray; margin:5px;">
<!-- 			    		그룹별로 클릭 시 그룹 상세 내역 접근 필요 -->
			    		<div style="height:130px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">제목 영역</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd (OOOOO 외 n개 도시)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 nn | 목표액 000,000원 (각 000,000원) | 진행현황 nn% (000,000원)</h4>
			    		</div>
			    		<div style="height:130px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">제목 영역</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd (OOOOO 외 n개 도시)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 nn | 목표액 000,000원 (각 000,000원) | 진행현황 nn% (000,000원)</h4>
			    		</div>
			    		<div style="height:130px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">제목 영역</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd (OOOOO 외 n개 도시)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 nn | 목표액 000,000원 (각 000,000원) | 진행현황 nn% (000,000원)</h4>
			    		</div>
			    		<div style="height:130px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							<h2 class="group_text1" style="margin-left:30px;">제목 영역</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">여행 일정 : yy.mm.dd ~ yy.mm.dd (OOOOO 외 n개 도시)</h4>
							<h4 class="group_text3" align="right" style="margin:0 30px 0 0;">참여인원 nn | 목표액 000,000원 (각 000,000원) | 진행현황 nn% (000,000원)</h4>
			    		</div>
			    		<div id="doSomething" style="height:130px; background-color:lightblue; border:2px solid lightgray; margin:5px;">
							
							<h2 class="group_text1" style="margin-left:30px;">그룹 이름</h2>
							<h4 class="group_text2" align="right" style="margin:0 30px 0 0;">적금 종료 일자 : 2019-10-01</h4>
							<h4 id="myPercent" class="group_text3" align="right" style="margin:0 30px 0 0;">진행 률 :10%</h4>	
			    		</div>


<!-- Trigger/Open The Modal -->
			    		
			    	</div>
			    	<div id="pagenation_field" align="center" style="height:50px; border:2px solid lightgray; margin:5px;">
<!-- 			    		페이지네이션 적용 필요 영역 -->
			    		<h4>1 2 3 4 5 6 7 8 9 10 ▶</h4>
			    	</div>
		    	</div>
	    	</div>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
	<div id="content">
	<h3>2019년</h3><h3 id="date">1</h3><h3>월</h3>
		<div class="usercontent">
			<div class="contentheader">
				전체 적금내역 
			</div>
			<div class="contentbar">
				<progress class="progressTag" value="10" max="100"></progress>			
			</div>
		</div>
		<div class="usercontent">
			<div class="contentheader">
				1등 : 홍길동 (nn원)
			</div>
			<div class="contentbar">
				<progress id="myProgress" class="progressTag" value="0" max="100"></progress>			
			</div>
		</div>
		
		<div class="usercontent">
			<div class="contentheader">
				2등 : 김철수 (nn원)
			</div>
			<div class="contentbar">
				<progress class="progressTag" value="0" max="100"></progress>			
			</div>
		</div>

	</div>
	<button onclick="myFunction()">Try it</button>
  </div>

</div>
        </div>
	</div>
<!-- <footer> -->
<%-- 	<jsp:include page = "footer.jsp" flush="true"></jsp:include> --%>
<!-- </footer> -->
</body>
<script src="mJS/progress.js"></script>
<script>

//Get the modal
var modal = document.getElementById("myModal");


// When the user clicks the button, open the modal


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
};

document.getElementById("doSomething")
.addEventListener('click', function (event) {
    // do something
	modal.style.display = "block";
    
});


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
	    	
	    	document.getElementById("date").innerHTML = parseInt(parseInt(bars[0].value / 10) % 12);
	    	
	    
	    }
		document.getElementById("myPercent").innerHTML  = "진행률 : 100%";
		

	  }

	}
	
//progressbar.js@1.0.0 version is used
//Docs: http://progressbarjs.readthedocs.org/en/1.0.0/


</script>
</html>
