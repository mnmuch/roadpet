<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

</head>
<body>
	<!-- 로그인 -->
	<%
		if (session.getAttribute("login_id") == null) {
	%>
	<!--로그인이 되지 않았을 때 화면을 보이게 하면 됨.  -->
		<div class="bg-light rounded h-100 p-4">
		<h3 class="mb-4">로그인</h3>
	<form action="login">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">아이디</label> <input
				name="user_id" class="form-control" type="text"
				placeholder="아이디 입력">
		</div>
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">비밀번호</label> <input
				name="password" class="form-control" id="password" type="password"
				placeholder="비밀번호 입력">
		</div>
		<div class="button-login-box">
			<button type="submit" class="btn btn-primary">로그인</button>
		</div>
	<div>
			<button type="button"
			><img src="${pageContext.request.contextPath}/resources/img/kakao_login.png">
			</button>
		</div>
		<div>
			<button type="button"
			><img src="${pageContext.request.contextPath}/resources/img/naver_login.png">
			</button>
		</div> 
		<div>
		<a href="signUp.jsp">회원가입</a>
		</div>
	</form>
	</div>





	<%
		} else {
	%>
	<!--로그인이 되었을 때 화면을 보이게 하면 됨.  -->
	<%=session.getAttribute("login_id")%>님 로그인되었습니다.
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