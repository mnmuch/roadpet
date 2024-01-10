<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<!-- 로그인 -->
	<%
		if (session.getAttribute("id") == null) {
	%>
	<!--로그인이 되지 않았을 때 화면을 보이게 하면 됨.  -->
	<form action="login">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" style="width: 250px;">로그인처리</button>
				</td>
			</tr>
		</table>
	</form>
	<hr color="red">


	<a href="member.jsp" class="btn btn-google btn-user btn-block">로그인화면</a>
	<a href="signUp.jsp" class="btn btn-google btn-user btn-block">회원가입</a>
	<a href="findIdCheck.jsp" class="btn btn-facebook btn-user btn-block">아이디
		찾기</a>
	<a href="findPassword.jsp" class="btn btn-warning btn-user btn-block">비밀번호
		찾기</a>


	<%
		} else {
	%>
	<!--로그인이 되었을 때 화면을 보이게 하면 됨.  -->
	<%=session.getAttribute("id")%>님 로그인되었습니다.
	<br>
	<a href="logout.jsp">
		<button>로그아웃</button>
	</a>
	<%
		}
	%>
	<!-- 컨트롤 + 쉬프트 + 슬러시(/) : 자동주석 -->


</body>
</html>