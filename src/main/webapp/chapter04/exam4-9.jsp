<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 4-9 Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="chapter04.Person" scope="request"></jsp:useBean>
	<jsp:setProperty name="person" property="id" value="20230824"></jsp:setProperty>
	<jsp:setProperty name="person" property="name" value="홍길동"></jsp:setProperty>
	<p>아이디 : <% out.println(person.getId()); %></p>
	<p>이름 : <% out.println(person.getName()); %></p>	
</body>
</html>