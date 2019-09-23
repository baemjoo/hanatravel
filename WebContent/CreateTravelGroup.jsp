<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Create Travel Group</title>
	
	<style type="text/css">
	.layout_travelgroup {	padding: 3px;
							margin: 3px;
							clear: both;
							display: block;
	}
	</style>
	
	<script type="text/javascript">
		// TBD - pSavingsResult의 값 변경 
	</script>
</head>

<body>
<form action="" id="formTravelConditions">
	<!-- Page Summary Section -->
	<div class="layout_travelgroup">
		<h1> 여행 그룹 생성 </h1>
		
		입력하신 여행 정보를 기반으로 산출된 여행 필요 자금은
		<b id="pSavingsResult">0</b>
		원 입니다.
		
		<hr>
	</div>
	
	<!-- Group Information Section -->
	<div class="layout_travelgroup">
		<label> * 그룹 이름:
			<input type="text" id="txtSavingsGroupName" placeholder="여행 그룹 이름"> 
		</label>
	</div>
	
	<div class="layout_travelgroup">
		<label> * 초대 멤버:
			<input type="text" id="txtSavingsGroupMembers" placeholder="###-####-####" title="초대할 그룹원 전화번호 입력하세요."> 
		</label>
	</div>
	
	<div class="layout_travelgroup">
		<label> * 적금 기간:
			<input type="date" id="dtSavingsFinishDate" placeholder="적금 기간" pattern="\d{4}\-\d{2}\-\d{2}\" title="yyyy-MM-dd 형식으로 입력해주시기 바랍니다.">
		</label>
	</div>
	
	<div class="layout_travelgroup">
		<label> * 적금 예정 금액:
			<input type="number" id="numSavings" placeholder="적금 예정 금액" min="100000"> 
		</label>
	</div>
	
	<!-- Page Move Button Section -->
	<div class="layout_travelgroup">
		<input type="button" id="btnBackTravelGroup" value="Prev">
		<input type="submit" id="btnSubmitTravelGroup" value="Create">
	</div>
</form>
</body>
</html>