<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 5-5 Implicit objects</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침 됩니다.</p>
	<%
		response.setIntHeader("Refresh",5);
	%>
	<p> <%=(new java.util.Date()) %></p>
</body>
</html>