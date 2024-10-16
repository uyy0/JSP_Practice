<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-4 Validation</title>
</head>
<body>
	<form name="loginForm" action="8_4" method="post" id="loginForm">
		<p>아 이 디 : <input type="text" name="id" id="id"></p>
		<p>비밀번호 : <input type="password" name="pw" id="pw"></p>
		<p><input type="button" value="전송" id="btn"></p>
	</form>
	<script type="text/javascript">
		var btn = document.querySelector("#btn");
		
		btn.addEventListener("click",checkLogin);
	
		function checkLogin(){
			console.log("함수 도착");
			var form = document.querySelector("#loginForm");
			var id = document.querySelector("#id").value;
			var pw = document.querySelector("#pw").value;
			
			
			for(i=0; i<id.length; i++){
				var ch = id.charAt(i);
				
				if ((ch<'a'|| ch>'z') && (ch>'A'||ch<'Z') && (ch>'0'||ch<'9')){
					alert("아이디는 영문 소문자만 입력 가능합니다!");
					form.id.select();
					return;
				}
			}
			
			if(isNaN(pw)){
				alert("비밀번호는 숫자만 입력 가능합니다!");
				form.pw.select();
				return;
			}
			form.submit();
		}
	
	</script>
</body>
</html>