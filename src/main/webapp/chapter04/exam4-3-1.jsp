<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 4-3-1 Action Tag</title>
</head>
<body>
	<h3>이 파일은 first.jsp입니다.</h3>
	<jsp:include page="4_3_1_second.jsp">
		<jsp:param name="date" value="<%=new java.util.Date() %>"></jsp:param>
	</jsp:include>
	<p>Jakarta Server Page</p>
</body>
</html>