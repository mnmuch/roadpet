<%@page import="com.multi.roadpet.lounge.LoungeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>로드펫 커뮤니티</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<style>
    .search-wrap {
        display: flex;
        align-items: center;
        gap: 5px; 
    }

    .search-wrap .search-select {
        flex: 0.8; 
    }

    .search-wrap .search-input {
        flex: 2; 
    }

    .search-wrap .search-btn {
        flex: 0.2; 
    }
</style>

<%@ include file="/sidebar.jsp"%>


<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {
		$('.pages').click(function() {
			$.ajax({
				url : "pageList",
				data : {
					page : $(this).text()
				},
				success : function(table) {
					$('#result').html(table)
				}
			}) //ajax
		}) //.pages
	}) //$
</script>
</head>
<body>

	<div class="container-xxl position-relative bg-white d-flex p-0">
		<div class="content">
			<%@ include file="/header.jsp"%>
			<h3 style="padding: 10px;">커뮤니티 라운지</h3>
			<div style="display: flex; justify-content: flex-end;">
				<a href="lounge_insert.jsp">
					<button type="button" class="btn btn-outline-danger m-2"
						id="insertType" aria-hidden="true">글쓰기</button>
				</a>
			</div>
			<hr color="red">
			
			<!-- 검색  -->
				<form action="list" method="get">
				<div class="search-wrap">
					<select class="form-control search-select" name="searchType">
						<option value="all" selected>전체</option>
						<option value="titleContent">제목+내용</option>
						<option value="reply">댓글</option>
						<option value="writer">작성자</option>
					</select>
					<input type="text" class="form-control search-input" name="keyWord" value="" placeholder="검색어를 입력해주세요.">
					<button id="submit" type="submit" class="btn btn-info search-btn">검색</button>
				</div>
				</form>
			
			
			<!-- 게시글 목록 -->
			<div class="container mt-4">
				<div id="result">
					<c:forEach items="${list}" var="bag">
						<div class="bg-light rounded">
							<div style="display: flex; gap: 20px;">
								<div>
									<span class="badge bg-warning">${bag.lounge_pet_type}</span>
								</div>
							</div>
							<a href="one?lounge_id=${bag.lounge_id}">
								<div>
									<h6 style="padding: 5px;">${bag.lounge_title}</h6>
								</div>
								<div style="padding: 5px;">${bag.lounge_content}</div>
							</a>
							<div style="display: flex; justify-content: space-between;">
								<div style="padding: 5px;">${bag.lounge_writer}</div>
								<div style="padding: 5px;">댓글: 0</div>
								<div style="padding: 5px;">좋아요/추천</div>
								<div style="padding: 5px;">${bag.lounge_date}</div>
							</div>
							<hr>
						</div>
					</c:forEach>
				</div>	
						
				<!-- 페이징 -->
			<c:forEach begin="1" end="${pages}" var="p">
				<div class="btn-group me-2" role="group" aria-label="First group">
					<button class="btn btn-primary pages">${p}</button>
				</div>
			</c:forEach>
		</div>

			<!-- Table End -->


			<!-- Footer Start -->

			<!-- Footer End -->
		</div>
		<!-- Content End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/lib/chart/chart.min.js"></script>
	<script src="../resources/lib/easing/easing.min.js"></script>
	<script src="../resources/lib/waypoints/waypoints.min.js"></script>
	<script src="../resources/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="../resources/lib/tempusdominus/js/moment.min.js"></script>
	<script src="../resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="../resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="../resources/js/main.js"></script>
</body>

</html>