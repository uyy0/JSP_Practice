<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 10-3 Security</title>
</head>
<body>
	<p>사용자명 : <%=request.getRemoteUser() %></p>
	<p>인증방법 : <%=request.getAuthType() %></p>
	<p>인증한 사용자명이 역할명 "manager"에 속하는 사용자인가요?
		<%=request.isUserInRole("manager") %></p>
	<p>인증한 사용자명이 역할명 "guest"에 속하는 사용자인가요?
		<%=request.isUserInRole("guest") %></p>
</body>
</html>