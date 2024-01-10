<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.roadpet.pet.PetInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/roadpet/resources/css/style.css">
</head>
<body>
<div class="h-100 bg-light rounded p-4">
<div align="right">
<a href="/roadpet/pet/pet_info_insert.jsp">추가</a>
</div>
<%
 ArrayList<PetInfoVO> list =(ArrayList<PetInfoVO>)request.getAttribute("list");
 for(PetInfoVO bag : list){
%>

<button class="btn_pet" id="<%= bag.getPet_id()%>">
	<img class="petprofile" src="../resources/upload/<%=bag.getPet_photo()%>" style="width:120px; height:120px; border-radius:70%; border: 3px solid gold;"  >
</button>


<%} %>

</div>

</body>
</html>