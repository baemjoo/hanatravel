<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Agreement</title>
	
	<style type=text/css>
	.layout_agreement {	padding: 3px;
						margin: 3px;
						clear: both;
						display: block;
	}
	.layout_agreement .leftdiv {	float: left;
									width: 90%;
	}
	.layout_agreement .rightdiv {	float: right;
									width: 10%;
	}
	</style>
	
	<script type="text/javascript"> 
		window.onload = function() 
		{
			// Get id of all elements
			var chkbtnAgreementAll = document.getElementById("chkbtnAgreementAll");
			var chkbtnAgreementUsage = document.getElementById("chkbtnAgreementUsage");
			var chkbtnAgreementPrivacy = document.getElementById("chkbtnAgreementPrivacy");
			
			// Do all agreement action
			chkbtnAgreementAll.onclick = function() 
			{
				chkbtnAgreementUsage.checked = chkbtnAgreementAll.checked;
				chkbtnAgreementPrivacy.checked = chkbtnAgreementAll.checked;
			};
		};
	
	</script>
	
</head>

<body>
<form action="" id="formAgreement">
	<!-- Welcome message Section -->
	<div class="layout_agreement">
		<h1> 환영합니다! </h1>
		<p> HANA Travel Planner는 회원님의 개인정보를 안전하게 보호하고 취급합니다. </p>
		<hr>
	</div>
	
	<!-- Agreement Section -->
	<div class="layout_agreement">
		<label>
			<input type="checkbox" id="chkbtnAgreementAll"> 약관 전체 동의
		</label>		
	</div>
	
	<div class="layout_agreement">
		<div class="leftdiv">
			<label>
				<input type="checkbox" id="chkbtnAgreementUsage"> 이용약관 동의(필수)
			</label>		
		</div>
		<div class="rightdiv">
			<input type="button" id="btnAgreemenetUsageDetails" value=">">
		</div>
	</div>
	
	<div class="layout_agreement">
		<div class="leftdiv">
			<label>
				<input type="checkbox" id="chkbtnAgreementPrivacy"> 개인정보 수집 및 이용동의(필수)
			</label>		
		</div>
		<div class="rightdiv">
			<input type="button" id="btnAgreemenetUsageDetails" value=">">
		</div>
	</div>
	
	<!-- Page Move Button Section -->
	<div class="layout_agreement">
		<input type="button" id="btnBackAgreementStatus" value="Prev">
		<input type="submit" id="btnSubmitAgreementStatus" value="Next">
	</div>
</form>
</body>
</html>