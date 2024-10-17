<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 9-4 Internationalization</title>
</head>
<body>
	<p>------formatDate 사용 예------</p>
	<jsp:useBean id="now" class="java.util.Date" />
	<p>date 형식 : <fmt:formatDate value="${now}" type="date" /> </p>
	<p>time 형식 : <fmt:formatDate value="${now}" type="time" /> </p>
	<p>both 형식 : <fmt:formatDate value="${now}" type="both" /> </p>
	
	<p>-------parseDate 사용 예------</p>
	<p><fmt:parseDate value="20230927230605" pattern="yyyyMMddHHmmss"/></p>
	<p><fmt:parseDate pattern="yyyyMMddHHmmss">20230927230605</fmt:parseDate></p>
	<p><fmt:parseDate value="20230927230605" pattern="yyyyMMddHHmmss"
		var="date" scope="page"/></p>
	<p><fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm" /></p>
	
	<p>-----------exam9-4-----------</p>
	<!-- jsp:useBean id="now" class="java.util.Date"  -->
	<p><fmt:formatDate value="${now}" type="date" /></p>
	<p><fmt:formatDate value="${now}" type="time" /></p>
	<p><fmt:formatDate value="${now}" type="both" /></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
	<p><fmt:formatDate value="${now}" type="both" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초 E요일"/></p>
</body>
</html>