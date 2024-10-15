<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 7-3-1 File Upload</title>
</head>
<body>
	<form action="7_3" method="post" enctype="multipart/form-data">
		<p>파일 : <input type="file" name="fileName"></p>
		<p><input type="submit" value="파일 올리기"></p>
	</form>
</body>
</html>