<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 4-3-2 Action Tag</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<jsp:include page="param01_data.jsp">
		<jsp:param name="id" value = "admin"></jsp:param>
		<jsp:param name="name" value = '<%=java.net.URLEncoder.encode("관리자") %>'></jsp:param>
	</jsp:include>
	<p>Jakarta Server page</p>
</body>
</html>