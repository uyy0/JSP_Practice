<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 2-3 Scripting Tag</title>
</head>
<body>
	<%! String makeItLower(String data){
		return data.toLowerCase();
	}
	%>
	<% out.println(makeItLower("Hello World!"));
	%>
</body>
</html>