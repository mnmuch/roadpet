<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
	<%@ include file="../header.jsp"%>
	<%@ include file="../sidebar.jsp"%>
	

</head>
<body>
	
   <div class="bg-light rounded h-100 p-4">
        <h3 class="mb-4">산책 정보 입력</h3>
		
		<form action="pet_walk_insert" id="form" method="post"  enctype="multipart/form-data">
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">1.펫 아이디</label> <input
					name="pet_id" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">2.펫 이름</label> <input
					name="pet_name" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">3.산책 날짜</label> <input
					name="walk_date" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
		
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">4.산책 시작 시간</label>
				 <input name="walk_start" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" >
			</div>
			 
			 <div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">5.산책 끝 시간</label>
				 <input name="walk_end" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">6.산책 거리</label>
				 <input name="walk_distance" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
		<div class="button-login-box">
				<button type="submit" class="btn btn-primary">완료</button>
			</div>
		</form>
</div>
</body>
</html>