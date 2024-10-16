<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 8-5 Validation</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="8_5" name="Member" id="Member" method="post">
		<p>아이디 : <input type="text" name="id" id="id"></p>
		<p>비밀번호 : <input type="password" name="pw" id="pw"></p>
		<p>이름 : <input type="text" name="name" id="name"></p>
		<p>연락처 : <select name="phone1" id="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
					</select>
					-<input type="text" maxlength="4" size="4" name="phone2" id="phone2">
					-<input type="text" maxlength="4" size="4" name="phone3" id="phone3"></p>
		<p>이메일 : <input type="email" name="email" id="email"></p>
		<p><input type="button" value="가입하기" id="btn"></p>
	</form>
	
	<script type="text/javascript">
		var btn = document.querySelector("#btn");
		btn.addEventListener("click", checkMember);
		
		function checkMember(){
			console.log("함수 도착");
			var regExpId=/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			var regExpName=/^[가-힣]*$/;
			var regExpPasswd=/^[0-9]*$/;
			var regExpPhone=/^\d{3}-\d{3,4}-\d{4}$/;
			var regExpEmail=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
			var form=document.querySelector("#Member");
			
			var id=document.querySelector("#id").value;
			var name=document.querySelector("#name").value;
			var pw=document.querySelector("#pw").value;
			var phone=document.querySelector("#phone1").value +
				"-"+ document.querySelector("#phone2").value+
				"-"+ document.querySelector("#phone3").value;
			var email=document.querySelector("#email").value;
			
			if(!regExpId.test(id)){
				alert("아이디는 문자로 시작해 주세요!");
				form.id.select();
				return;
			}
			if(!regExpName.test(name)){
				alert("이름은 한글만 입력해 주세요!");
				form.name.select();
				return;
			}
			if(!regExpPasswd.test(pw)){
				alert("비밀번호는 숫자만 입력해 주세요!");
				form.pw.select();
				return;
			}
			if(!regExpPhone.test(phone)){
				alert("연락처 입력을 확인해 주세요!");
				form.phone.select();
				return;
			}
			if(!regExpEmail.test(email)){
				alert("이메일 입력을 확인해 주세요!");
				form.email.select();
				return;
			}
			form.submit();
		}
	</script>
</body>
</html>