<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
	<form action="signUp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2">
					<button id="idCheck" type="submit" style="width: 250px;">중복확인
					<span id="olmessage"></span> </button>
				</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
			<tr>
				<td>패스워드확인</td>
				<td><input type="password" name="passwordCheck"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="tel" name="phone"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="date" name="birthday"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="nickname"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" style="width: 250px;">회원가입처리</button>
				</td>
			</tr>
		</table>
	</form>
	<a href="member.jsp" class="btn btn-google btn-user btn-block">로그인화면</a>
	<a href="signUp.jsp" class="btn btn-google btn-user btn-block">회원가입</a>
	<a href="findIdCheck.jsp" class="btn btn-facebook btn-user btn-block">아이디
		찾기</a>
	<a href="findPassword.jsp" class="btn btn-warning btn-user btn-block">비밀번호
		찾기</a>
</body>
</html>