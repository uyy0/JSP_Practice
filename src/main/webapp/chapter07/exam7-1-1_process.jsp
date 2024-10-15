<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam7-1-1</title>
</head>
<body>
<%
	String name=(String)request.getAttribute("name");
	String subject=(String)request.getAttribute("subject");
	String file=(String)request.getAttribute("file");
%>
이름 : <%=name %><br>
제목 : <%=subject %><br>
파일 : <%=file %><br>
<img src="img/<%=file %>">

</body>
</html>