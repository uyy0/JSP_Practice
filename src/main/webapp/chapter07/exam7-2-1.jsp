<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 7-2-1 Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data"
	action="7_2_1">
		<p> 이 름1 : <input type="text" name="name1">
		    제 목1 : <input type="text" name="subject1">
		    파 일1 : <input type="file" name="filename1"></p>
		<p> 이 름2 : <input type="text" name="name2">
		    제 목2 : <input type="text" name="subject2">
		    파 일2 : <input type="file" name="filename2"></p>
		<p> 이 름3 : <input type="text" name="name3">
		    제 목3 : <input type="text" name="subject3">
		    파 일3 : <input type="file" name="filename3"></p>
		<p><input type="submit" value="파일 올리기"></p>
	</form>
</body>
</html>