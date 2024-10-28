<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chapter16.dto.exam16_dto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 16-4 Database SQL</title>
</head>
<body>
	<%
		ArrayList<exam16_dto> arr=(ArrayList<exam16_dto>)request.getAttribute("list");
	%>
	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
			for(int i=0; i<arr.size(); i++){
				exam16_dto dto = arr.get(i);
				String id=dto.getId();
				String pw=dto.getPw();
				String name=dto.getName();
		%>
		<tr>
			<td><%=id %></td>
			<td><%=pw %></td>
			<td><%=name %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>