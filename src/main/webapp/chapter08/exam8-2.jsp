<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-2 Validation</title>
</head>
<body>
	<script type="text/javascript">
		var button = document.querySelector("#button");
		button.addEventListener("click",checkLogin);
		function checkLogin(){
			var form=document.querySelector("#loginForm");
			var id = document.querySelector("#id").value;
			var pw = document.querySelector("#pw").value;
			
			if(form.id.value == ""){
				alert("아이디를 입력해 주세요.");
				form.id.focus();
				return false;
			} else if(form.passwd.value == ""){
				alert("비밀번호를 입력해 주세요.");
				form.passwd.focus();
				return false;
			}
			form.submit();
		}
	</script>
		<form name="loginForm" action="8_2" method="post" id="loginForm">
			<p>아 이 디 : <input type="text" name="id" id="id"></p>
			<p>비밀번호 : <input type="password" name="passwd" id="pw"></p>
			<p><input type="button" value="전송" onclick="checkLogin()" id="button"></p>
		</form>
</body>
</html>