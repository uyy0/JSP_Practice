<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 11-5 Exception</title>
</head>
<body>
	<p>잘못된 데이터가 입력되었습니다.</p>
	<p><%=" 숫자1 : "+request.getParameter("num1") %></p>
	<p><%=" 숫자2 : "+request.getParameter("num2") %></p>
</body>
</html>