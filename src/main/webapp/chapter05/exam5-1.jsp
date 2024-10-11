<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 5-1 Implicit objects</title>
</head>
<body>
<%  
	String userid =(String)request.getAttribute("userid");
    String password =(String)request.getAttribute("password");
%>
<p> 아이디 : <%=userid %></p>
<p> 비밀번호 : <%=password %></p>
</body>
</html>