<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/project.css">
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>

</head>
<body>

<div id="loginBoxTitle">펫 정보입력</div>
<div id="inputBox">
<form action="update_pet_info">
	<div class="input-form-box">펫 아이디  <input name="pet_id" class="form-control"></div>
	<div class="input-form-box">펫이름  <input name="pet_name" class="form-control"></div>
	<div class="input-form-box">종류  <input name="pet_type" class="form-control"></div>
	<div class="input-form-box">성별  <input name="pet_sex" class="form-control"></div>
	<div class="input-form-box">생년월일  <input name="pet_birth" class="form-control"></div><br>
	
	중성화여부 <br> 예 <input type="radio" class="form-check-input" name="pet_neutering" value="1">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	아니오 <input type="radio" class="form-check-input"name="pet_neutering" value="0"><br><br>
	백신여부 <br> 예 <input type="radio" class="form-check-input" name="pet_vacccin" value="1">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	아니오 <input type="radio" class="form-check-input"name="pet_vacccin" value="0"><br><br>
	
	<div class="input-form-box">펫 사진:<input name="pet_photo" class="form-control"></div><br>
<div class="button-login-box" >
<button type="submit" class="btn btn-primary">완료</button>
</div>
</form>
</div>
</body>
</html>