<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="exam11-3_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 11-3 Exception</title>
</head>
<body>
	<%
		String num1=request.getParameter("num1");
		String num2=request.getParameter("num2");
		int a=Integer.parseInt(num1);
		int b=Integer.parseInt(num2);
		int c=a/b;
		out.print(num1+"/"+num2+"="+c);	
	%>
</body>
</html>