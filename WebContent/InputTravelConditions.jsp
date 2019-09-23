<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Input Travel Conditions</title>
	
	<style type="text/css">
	.layout_travelconditions {	padding: 3px;
								margin: 3px;
								clear: both;
								display: block;
	}
	</style>
	
	<script type="text/javascript">
		// TBD
	</script>
</head>

<body>
<form action="" id="formTravelConditions">
	<!-- Page Summary Section -->
	<div class="layout_travelconditions">
		<h1> 여행 정보 입력 </h1>
		<hr>
	</div>
	
	<!-- Travel Conditions Section -->
	<div class="layout_travelconditions">
		<label> * 여행 기간:
			<input type="date" id="dtTravelStartDate" placeholder="여행 시작일" pattern="\d{4}\-\d{2}\-\d{2}\" title="yyyy-MM-dd 형식으로 입력해주시기 바랍니다.">
			<input type="date" id="dtTravelFinishDate" placeholder="여행 종료일"  pattern="\d{4}\-\d{2}\-\d{2}\" title="yyyy-MM-dd 형식으로 입력해주시기 바랍니다."> 
		</label>
	</div>
	
	<div class="layout_travelconditions">
		<label> * 여행 도시:
			<input type="text" id="txtTravelCity" placeholder="여행 도시명"> 
		</label>
	</div>
	
	<div class="layout_travelconditions">
		<label> * 여행 스타일:
			<input type="radio" id="rdoTravelStyleSoft" name="travelStyle" value="soft" checked> Soft
			<input type="radio" id="rdoTravelStyleHard" name="travelStyle" value="hard"> Hard
		</label>
	</div>
	
	<div class="layout_travelconditions">
		<label> * 주요 연령대:
			<input type="number" id="numAges" placeholder="그룹원 평균 나이" min="10" max="100"> 
		</label>
	</div>
	
	<!-- Page Move Button Section -->
	<div class="layout_travelconditions">
		<input type="button" id="btnBackTravelConditions" value="Prev">
		<input type="submit" id="btnSubmitTravelConditions" value="Next">
	</div>
</form>
</body>
</html>