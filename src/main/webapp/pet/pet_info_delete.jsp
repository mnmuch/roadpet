<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/roadpet/resources/css/project.css">

<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
</head>
<body>

<div id="loginBoxTitle">펫 삭제정보입력</div>
<div id="inputBox">
<form action="pet_info_delete">
	<div class="input-form-box">펫 아이디  <input name="pet_id" class="form-control"></div>
<div class="button-login-box" >
<button type="submit" class="btn btn-primary">완료</button>
</div>
</form>
</div>
</body>
</html>