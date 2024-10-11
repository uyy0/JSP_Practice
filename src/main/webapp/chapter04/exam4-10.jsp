<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 4-10 Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="chapter04.Person" scope="request"></jsp:useBean>
	<p>아이디 : <jsp:getProperty name="person" property="id" /></p>
	<p>이름 : <jsp:getProperty name="person" property="name" /></p>
	
</body>
</html>