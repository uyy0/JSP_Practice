<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-3 Validation</title>
</head>
<body>
	<%
		String id = (String)request.getAttribute("id");
		String pw = (String)request.getAttribute("pw");
		String name = (String)request.getAttribute("name");
		
	%>	
	<h3>입력에 성공했습니다!</h3>
	<p>아이디 : <%=id %></p>
	<p>비밀번호 : <%=pw %></p>
	<p>이름 : <%=name %></p>
</body>
</html>