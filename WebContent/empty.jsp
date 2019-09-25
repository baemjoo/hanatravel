<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Empty</title>
</head>
<body>
	<jsp:include page = "header.jsp" flush="true"></jsp:include>
	<div id="jb-container">
      	<div id="jb-content">
	      	<div>
				<jsp:include page = "" flush="false"></jsp:include>
	        </div>
  </div>
	<jsp:include page = "footer.html" flush="true"></jsp:include> 
</body>
</html>
