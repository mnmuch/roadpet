<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<script type="text/javascript" src="/roadpet/resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">

	$(function() {
		$.ajax({
			url : "pet_info_list",
			success : function(x) {
				$("#all").html(x)
				$(".btn_pet").click(function() {	
					let clickValue = $(this).attr("id")
					$.ajax({
						url : "pet_info_one",
						data : {
							pet_id : clickValue
						},
						success : function(x) {	
							$("#result").html(x)
						}//success
					})//ajax
					
					$.ajax({
						url : "pet_walk_one",
						data : {
							pet_id : clickValue
						},
						success : function(x) {	
							$("#result3").html(x)
						}//success
					})//ajax	
				
				})//b1
				
				
			}//success
		})//ajax

	})//$
</script>
</head>

<body>
	<div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <h3 class="mb-0">마이펫 정보</h3>                    
                	<div id="all">내 펫들이름 들어가는곳</div>         
				<div id="result">마이펫 정보 들어가는곳</div>
	</div>	
    </div>
    
    <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <h3 class="mb-0">다이어리</h3>                    
                	      
				<div id="result2">다이어리 들어가는곳</div>
	</div>	
    </div>
     <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <h3 class="mb-0">산책기록</h3>                    
                	      
				<div id="result3">산책기록 들어가는곳</div>
	</div>	
    </div>
    
    
    
</body>
</html>