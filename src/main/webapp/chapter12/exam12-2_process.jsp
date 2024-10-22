<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 12-2 Filter</title>
</head>
<body>
	<%
		String id=(String)request.getAttribute("id");
		String passwd=(String)request.getAttribute("passwd");
		String message=(String)request.getAttribute("message");
	%>
	<p><%=message %></p>
	<p>입력된 id 값 : <%=id %></p>
	<p>입력된 pw 값 : <%=passwd %></p>
</body>
</html>