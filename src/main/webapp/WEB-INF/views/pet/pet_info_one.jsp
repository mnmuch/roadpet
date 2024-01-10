<%@page import="com.multi.roadpet.pet.PetInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!--model로 views/one.jsp까지 전달한 데이터를 받아 꺼내서 출력 -->
<%
	PetInfoVO dto = (PetInfoVO)request.getAttribute("dto");
%>
	 
		<div class="h-100 bg-light rounded p-4">
		<span>
			
				<img class="petprofile" src="../resources/upload/<%=dto.getPet_photo()%>" style="width:120px; height:120px; border-radius:70%; border: 3px solid gold;"  >
			
		</span>
		<div align="right">
			<a href="/roadpet/pet/pet_info_update?pet_id=${dto.pet_id}">수정</a>
			<a href="/roadpet/pet/pet_info_delete?pet_id=${dto.pet_id}">삭제</a>
			</div>
			<div class="d-flex align-items-center border-bottom py-3">

				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>이름</span>
						<h6 class="mb-0"> <%=dto.getPet_name() %></h6>

					</div>
				</div>
			</div>
			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>품종</span>
						<h6 class="mb-0">
							<%=dto.getPet_type()%></h6>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">

						<span>분류</span>
						<h6 class="mb-0"> <%=dto.getPet_detail() %></h6>
					</div>
				</div>
			</div>

			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>성별</span>
						<h6 class="mb-0"><%=dto.getPet_sex() %></h6>
					</div>
				</div>
			</div>

			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>생년월일</span>
						<h6 class="mb-0"> <%=dto.getPet_birth() %></h6>
					</div>
				</div>
			</div>

			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>중성화여부</span>
						<h6 class="mb-0"> <%=dto.getPet_neutering() %></h6>
					</div>
				</div>
			</div>

			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>백신접종여부</span>
						<h6 class="mb-0"> <%=dto.getPet_vaccin() %></h6>
					</div>
				</div>
			</div>
			
		</div>




</body>
</html>