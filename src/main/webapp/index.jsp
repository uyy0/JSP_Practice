<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실습 리스트</title>
</head>
<body>
	실습리스트
	<p><a href = "2_1">예제 2-1</a></p>
	<p><a href = "2_2">예제 2-2</a></p>
	<p><a href = "2_3">예제 2-3</a></p>
	<p><a href = "2_4">예제 2-4</a></p>
	<p><a href = "2_5">예제 2-5</a></p>
	<p><a href = "2_6">예제 2-6</a></p>
	<p><a href = "2_7">예제 2-7</a></p>
	<hr></hr>
	<p><a href = "3_1">예제 3-1</a></p>
	<p><a href = "3_2">예제 3-2</a></p>
	<p><a href = "3_3">예제 3-3</a></p>
	<p><a href = "3_4">예제 3-4</a></p>
	<p><a href = "3_6">예제 3-6</a></p>
	<p><a href = "3_9">예제 3-9</a></p>
	<p><a href = "3_10">예제 3-10</a></p>
	<p><a href = "3_11">예제 3-11</a></p>
	<hr></hr>
	<p><a href = "4_1">예제 4-1</a></p>
	<p><a href = "4_2">예제 4-2</a></p>
	<p><a href = "4_3_1">예제 4-3-1</a></p>
	<p><a href = "4_3_2">예제 4-3-2</a></p>
	<p><a href = "4_4">예제 4-4</a></p>
	<p><a href = "4_5">예제 4-5</a></p>
	<p><a href = "4_6">예제 4-6</a></p>
	<p><a href = "4_7">예제 4-7</a></p>
	<p><a href = "4_8">예제 4-8</a></p>
	<p><a href = "4_9">예제 4-9</a></p>
	<p><a href = "4_10">예제 4-10</a></p>
	<p><a href = "4_11">예제 4-11</a></p>
	
	<form action="4_0" method="get">
		<input type="text" name="id" />
		<input type="text" name="name" />
		<input type="submit" value="4-0 전송" />
	</form>
	<%
		String id="admin";
		String name="홍길동";
	%>
	<p><a href = "4_0?id=${id}&name=<%=name%>">예제 4-0</a></p>
	
	<hr></hr>
	
	<form action="5_1" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="text" name="passwd"></p>
		<p><input type="submit" value="5-1 전송"></p>
	</form>
	<p><a href = "5_2">예제 5-2</a></p>
	<p><a href = "5_3">예제 5-3</a></p>
	<p><a href = "5_4">예제 5-4</a></p>
	<p><a href = "5_5">예제 5-5</a></p>
	<p><a href = "5_7">예제 5-7</a></p>
	<p><a href = "5_8">예제 5-8</a></p>
		
	<hr></hr>
	
	<p><a href = "6_1">예제 6-1</a></p>
	
	<hr></hr>
	
	<p><a href = "7_1">예제 7-1</a></p>
	<p><a href = "7_1_1">예제 7-1-1</a></p>
	<p><a href = "7_2">예제 7-2</a></p>
	<p><a href = "7_2_1">예제 7-2-1</a></p>
	<p><a href = "7_3_1">예제 7-3-1</a></p>
	<p><a href = "7_3">예제 7-3</a></p>
	<p><a href = "7_4">예제 7-4</a></p>
	
	<hr></hr>
	
	<p><a href = "8_1">예제 8-1</a></p>
	<p><a href = "8_2">예제 8-2</a></p>
	<p><a href = "8_3">예제 8-3</a></p>
	<p><a href = "8_4">예제 8-4</a></p>
	<p><a href = "8_5">예제 8-5</a></p>
	
	<hr></hr>
	
	<p><a href = "9_1">예제 9-1</a></p>
	<p><a href = "9_2">예제 9-2</a></p>
	<p><a href = "9_3">예제 9-3</a></p>
	<p><a href = "9_4">예제 9-4</a></p>
	<p><a href = "9_5">예제 9-5</a></p>
	
	<hr></hr>
	
	<p><a href = "10_1">예제 10-1/10-2</a></p>
	<p><a href = "10_3">예제 10-3</a></p>
	
	<hr></hr>
	
	<p><a href = "11_1">예제 11-1</a></p>
	<p><a href = "11_2">예제 11-2</a></p>
	<p><a href = "11_3">예제 11-3</a></p>
	<p><a href = "11_4">예제 11-4</a></p>
	<p><a href = "11_5">예제 11-5</a></p>
	<p><a href = "11_6">예제 11-6</a></p>
	
	<hr></hr>
	
	<p><a href = "12_1">예제 12-1</a></p>
	<p><a href = "12_2">예제 12-2</a></p>
	<p><a href = "12_3">예제 12-3</a></p>
	
	<hr></hr>
	
	<p><a href = "13_login1">로그인</a></p>
	<p><a href = "13_1">예제 13-1~8</a></p>
	
</body>
</html>