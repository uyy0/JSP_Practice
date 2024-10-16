<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-5 Validation</title>
</head>
<body>
	<%
		String id=(String)request.getParameter("id");
		String name=(String)request.getParameter("name");
		String pw=(String)request.getParameter("pw");
		String phone1=(String)request.getParameter("phone1");
		String phone2=(String)request.getParameter("phone2");
		String phone3=(String)request.getParameter("phone3");
		String email=(String)request.getParameter("email");
	%>
	<p>아이디 : <%=id %></p>
	<p>이름 : <%=name %></p>
	<p>비밀번호 : <%=pw %></p>
	<p>연락처 : <%=phone1 %>-<%=phone2 %>-<%=phone3 %></p>
	<p>이메일 : <%=email %></p>
		
</body>
</html>