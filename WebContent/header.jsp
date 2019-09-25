<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
	<%
// 		String user_id = (String)session.getAttribute("session_id");
// 		String user_name = (String)session.getAttribute("session_name");
//		테스트
	%>
<div>
	<div id="top-line" style="position:relative; width:100.7%; height:4px; color:black; top:4px; left:-0.4%; background-color:#2eb4a8;"></div>
	<div id="top-outerbox" style="position:relative; width:100%; height:80px; top:15px; text-align:center; color:yellow; background-color:white; color:white;">
		<span style="height:100px; position:relative; top:5px; right:440px;">
			<a href="" type="text/html" style="height:100px; text-decoration:none !important;">
				<img src="image/home.png" style="width:230px;"/>
			</a>
			
<%-- 			<% if (user_id == null) { %> --%>
				<a href="" type="text/html" style="text-decoration:none !important;">
					<img src="image/login.png" style="width:80px;"/>
				</a>
<%--      		<% } else {	 %> --%>
<!-- 			<a href="" type="text/html" style="text-decoration:none !important;"> -->
<!-- 				<img src="image/logout.png" style="width:100px;"/> -->
<!-- 			</a> -->
<%--    	   	    <% } %> --%>
		</span>
	</div>	
	<div id="top-outermenu" style="positison:relative; width:100%; height:60px; margin-top:5px; text-align:center; color:yellow; border:1px solid lightgray; background-color:#f4f6f7;">
		<a href="" type="text/html">
			<img src="image/menu_dummy.png" style="width:1200px; position:relative;"/>
		</a>
	</div>
</div>
</body>
</html>