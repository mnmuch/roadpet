<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<script src="http://code.jquery.com/jquery-latest.min.js"
	src="js/jquery-3.6.0.min.js"></script>
	
	
<!-- 아이디 중복체크 -->
<script>
    function checkId(){
    	        var id = $('#login_id').val(); //id값이 "login_id"인 입력란의 값을 저장
    	        $.ajax({
    	            url:'idCheck', //MemberController에서 요청 받을 주소
    	            type:'post', 
    	            data:{id:id},
    	            success:function(result){ 
    	                if(result == 0){ 
    	        			$("#idCheck").css("color", "blue").text("사용 가능한 아이디 입니다.");
    	                } else { 
    	        			$("#idCheck").css("color", "red").text("이미 존재하는 아이디 입니다.");
    	                }
    	              },
    	              error : function(jqxhr, textstatus, error)
    	              {
    	            	  console.log(jqxhr);
    	            	  //alert(textstatus);
    	            	  //alert(error);
    	            	  
    	              }
    	        	
    	        })
  	        }
</script>
<!-- 비밀번호 일치체크 -->
<script>
	$(function() {
		$('#password').keyup(function() {
			$('#checkPw').html('');
		});

		$('#passwordCheck').keyup(function() {

			if ($('#password').val() != $('#passwordCheck').val()) {
				$("#checkPw").css("color", "red").text("비밀번호를 다시 입력해주세요.");
			} else {
				$("#checkPw").css("color", "blue").text("비밀번호가 일치합니다.");
			}

		});
	});
</script>

</head>
<body>

	<div class="bg-light rounded h-100 p-4">
		<h3 class="mb-4">회원가입</h3>

		<form action="signUp" id="form" method="post">

			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">아이디</label> <input
					name="login_id" class="form-control" type="text" id="login_id"
					placeholder="아이디 입력" oninput = "checkId()"><label id="idCheck"></label>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">비밀번호</label> <input
					name="password" class="form-control" id="password" type="password"
					placeholder="비밀번호 입력"> <label id="checkPw"></label>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">비밀번호확인</label> <input
					name="passwordCheck" class="form-control" id="passwordCheck"
					type="password" placeholder="비밀번호 재입력">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">이름</label> <input
					name="name" class="form-control" type="text"
					placeholder="이름을 입력해주세요">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">전화번호</label> <input
					name="phone" class="form-control" type="text"
					placeholder="휴대폰번호를 입력해주세요">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">생년월일</label> <input
					name="birthday" class="form-control" type="date">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">닉네임</label> <input
					name="nickname" class="form-control" type="text"
					placeholder="닉네임을 입력해주세요."><label id="label1"></label>
			</div>
			<div class="button-login-box">
				<button type="submit" class="btn btn-primary">회원가입</button>
			</div>

		</form>
	</div>
</body>
</html>