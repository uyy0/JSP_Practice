<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-3 Validation</title>
</head>
<body>
	<form name="loginForm" action="8_3" method="post" id="loginForm">
		<p>아 이 디 : <input type="text" name="id" id="id"></p>
		<p>비밀번호 : <input type="password" name="pw" id="pw"></p>
		<p>이 름 : <input type="text" name="name" id="name"></p>
		<p><input type="button" value="전송" id="btn"></p>
	</form>
	<script type="text/javascript">
		var btn = document.querySelector("#btn");
		
		btn.addEventListener("click",checkLogin);
		var form = document.querySelector("#loginForm");
		
		
		function checkLogin(){
			var id = document.querySelector("#id").value;
			var pw = document.querySelector("#pw").value;
			var name = document.querySelector("#name").value;
			
			console.log("함수 도착");
			console.log(id);
			console.log(pw);
			console.log(name);
			console.log(isNaN(name.substr(0,1)));
			console.log(!isNaN(name.substr(0,1)));
			if(id.length <4 || id.length >12){
				alert("아이디는 4~12자 이내로 입력 가능합니다!");
				form.id.select();
				return;
			}
			if(pw.length<4){
				console.log("함수 도착2");
				alert("비밀번호는 4자 이상으로 입력해야 합니다!");
				form.pw.select();
				return;
			}
			if(!isNaN(name.substr(0,1))){
				console.log("함수 도착3")
				alert("이름은 숫자로 시작할 수 없습니다!");
				form.name.select();
				return;
			}
			form.submit();	
		}
		
	</script>
</body>
</html>