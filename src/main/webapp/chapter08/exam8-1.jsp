<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-1 Validation</title>
</head>
<body>
	<form name="loginForm">
		<p>아 이 디 : <input type="text" name="id" id="id"></p>
		<p>비밀번호 : <input type="password" name="passwd" id="pw"></p>
		<p><input type="submit" value="전송" id="submit"></p>
	</form>
	<script type="text/javascript">
		//Step 1 : 요소 선택
		//submit 버튼을 선택
		var submit = document.querySelector("#submit");
		//Step 2 : 요소에 이벤트 할당, 함수 연결
		//sumbit 버튼에 이벤트 할당, 함수 연결
		submit.addEventListener("click",checkForm);
		
		//Step 3 : 
		function checkForm(){
			//#id, #pw 요소 value 변수에 넣음
			var id = document.querySelector("#id").value;
			var pw = document.querySelector("#pw").value;
			alert("아이디 : "+id+"\n"+"비밀번호 : "+pw);
			}
	</script>
</body>
</html>