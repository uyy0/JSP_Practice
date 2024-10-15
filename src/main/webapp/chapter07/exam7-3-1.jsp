<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 7-3-1 File Upload</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="7_3_1">
		<p>제목 : <input type="text" name="title"></p>
		<p>파일 : <input type="file" name="fileName"></p>
		<p><input type="submit" value="submit"></p>
	</form>
</body>
</html>