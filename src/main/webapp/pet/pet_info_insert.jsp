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
        <h3 class="mb-4">펫정보 입력1</h3>
		
		<form action="pet_info_insert" id="form"  enctype="multipart/form-data">
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">1.유저 아이디</label> <input
					name="user_id" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">2.펫 이름</label> <input
					name="pet_name" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">3.펫 분류</label>
				 <select
				 	name=pet_type
					class="form-select form-select-sm mb-3"
					aria-label=".form-select-sm example">
					<option selected>펫 분류를 선택하세요</option>
					<option value="1">강아지</option>
					<option value="2">고양이</option>
					<option value="3">소동물</option>
					<option value="4">물고기</option>
				</select>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">4.펫 품종</label>
				 <input name="pet_detail" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="ex)푸들">
			</div>
			 
			<fieldset class="row mb-3"> 
			<div class="col-sm-10">
			<label for="exampleInputEmail1" class="form-label">5.펫 성별</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="pet_sex"
						id="gridRadios1" value="0" checked> <label
						class="form-check-label" for="gridRadios1" > 남 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="pet_sex"
						id="gridRadios2" value="1"> <label
						class="form-check-label" for="gridRadios2"> 여 </label>
				</div>
			</div>
			</fieldset>


			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">6.펫 생년월일</label> <input
					name="pet_birth" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="ex)990105">
			</div>

		<fieldset class="row mb-3"> 
			<div class="col-sm-10">
			<label for="exampleInputEmail1" class="form-label">7.중성화여부</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="pet_neutering"
						id="gridRadios1" value="0" checked> <label
						class="form-check-label" for="gridRadios1"> 예 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="pet_neutering"
						id="gridRadios2" value="1"> <label
						class="form-check-label" for="gridRadios2"> 아니오 </label>
				</div>
			</div>
			</fieldset>
			
			<fieldset class="row mb-3"> 
			<div class="col-sm-10">
			<label for="exampleInputEmail1" class="form-label">8.백신접종여부</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="pet_vaccin"
						id="gridRadios1" value="0" checked> <label
						class="form-check-label" for="gridRadios1"> 예 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="pet_vaccin"
						id="gridRadios2" value="1"> <label
						class="form-check-label" for="gridRadios2"> 아니오 </label>
				</div>
			</div>
			</fieldset>


			<div class="input-form-box">
				9.펫 사진:<input type="file" name="pet_photo" class="form-control">
			</div>
			<br>
			<div class="button-login-box">
				<button type="submit" class="btn btn-primary">완료</button>
			</div>

		</form>
</div>
</body>
</html>