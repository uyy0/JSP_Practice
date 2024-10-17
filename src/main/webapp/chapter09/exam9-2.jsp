<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Exam 9-2 Internationalization</title>
</head>
<body>
	<p>------기본 로케일------</p>
	<!-- ko가 없으면 default bundle로 설정되는 것을 이용(현재 MyBundle_ko 없기 때문) -->
	<fmt:setLocale value="ko"/> 
	<fmt:setBundle basename="chapter09.bundle.myBundle" var="resourceBundle" />
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"/></p>
	<p><fmt:message key="username" var="userMsg" bundle="${resourceBundle}"/>
		이름 : ${userMsg}</p>
	<p>------영문 로케일------
		<fmt:setLocale value="en"/>
		<fmt:setBundle basename="chapter09.bundle.myBundle" var="resourceBundle"/>	
	</p>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"/></p>
	<p>이름 : <fmt:message key="username" bundle="${resourceBundle}"/></p>

</body>
</html>