<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 5-8 Implicit objects</title>
</head>
<body>
	<%
		String userid = (String)request.getAttribute("id");
		String password = (String)request.getAttribute("passwd");
	%>
	<p> 아이디 : <% out.println(userid); %>
	<p> 비밀번호 : <% out.println(password); %>
</body>
</html>