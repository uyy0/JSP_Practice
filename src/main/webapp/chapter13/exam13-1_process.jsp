<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 13-1 Session</title>
</head>
<body>
	<%
		String user_id=request.getParameter("id");
		String user_pw=request.getParameter("pw");
		
		if(user_id.equals("admin")&&user_pw.equals("1234")){
			session.setAttribute("userID",user_id);
			session.setAttribute("userPW",user_pw);
			out.println("세션 설정이 성공했습니다!<br>");
			out.println(user_id+"님 환영합니다.");
		} else {
			out.println("세선 설정이 실패했습니다.");
		}
		
	%>
	<br>
	<a href="13_2">예제 13-2</a><br>
	<a href="13_3">예제 13-3</a><br>
	<a href="13_4">예제 13-4</a><br>
	<a href="13_5">예제 13-5</a><br>
	<a href="13_6">예제 13-6</a><br>
	<a href="13_7">예제 13-7</a><br>
	<a href="13_8">예제 13-8</a><br>
</body>
</html>