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
<table class="table">
		
	<tr>
		<td colspan="2">
		<img src="resources/upload/${savedName}" width="350" height="400"><br>
		</td>
	</tr>
	<tr>
		<td colspan="2">펫 이름: <%=dto.getPet_name() %></td>
	</tr>
	<tr>
		<td>태어난일: <%=dto.getPet_birth() %></td>
		<td>종류: <%=dto.getPet_type() %></td>
	</tr>
	<tr>
		<td>성별:  <%=dto.getPet_sex() %></td>
		<td>중성화여부:  <%=dto.getPet_neutering() %></td>
	</tr>
	<tr>
		<td>백신여부:  <%=dto.getPet_vaccin() %></td>
	</tr>
	
</table>

</body>
</html>