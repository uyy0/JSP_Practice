<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 4-8 Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="chapter04.Person" scope="request"></jsp:useBean>
	<p>아이디 : <%=person.getId() %></p>
	<p>이름 : <%=person.getName() %></p>
	<jsp:include page="exam4-8.jsp"></jsp:include>
	
</body>
</html>