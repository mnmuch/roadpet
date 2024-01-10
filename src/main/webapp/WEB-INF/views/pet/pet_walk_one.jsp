<%@page import="com.multi.roadpet.pet.PetWalkVO"%>
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
	PetWalkVO dto = (PetWalkVO)request.getAttribute("dto");
%>
	 
		<div class="h-100 bg-light rounded p-4">
			
			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>이름</span>
						<h6 class="mb-0">${dto.pet_name}</h6>

					</div>
				</div>
			</div>
			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>산책 날짜</span>
						<h6 class="mb-0">
							<%=dto.getWalk_date()%></h6>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">

						<span>산책시작</span>
						<h6 class="mb-0"> <%=dto.getWalk_start() %></h6>
					</div>
				</div>
			</div>

			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>산책종료</span>
						<h6 class="mb-0"><%=dto.getWalk_end() %></h6>
					</div>
				</div>
			</div>

			<div class="d-flex align-items-center border-bottom py-3">
				<div class="w-100 ms-3">
					<div class="d-flex w-100 justify-content-between">
						<span>산책거리</span>
						<h6 class="mb-0"> <%=dto.getWalk_distance() %></h6>
					</div>
				</div>
			</div>		
		</div>
</body>
</html>