<%@page import="com.multi.roadpet.lounge.LoungeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>로드펫 커뮤니티</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<%@ include file="/sidebar.jsp"%>


</head>

<body>

	<div class="container-xxl position-relative bg-white d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- views 파일에서 구현예정 -->
		<div class="content">
			<%@ include file="/header.jsp"%>
			<div class="container-fluid pt-4 px-4">
			
						<div style="display: flex; justify-content: flex-end;">				
							<a href="update?lounge_id=${bag.lounge_id}">
                                <button class="btn btn-primary w-20 m-2" type="submit">글수정</button>
                            </a>
                            <form action="delete">
 								<button class="btn btn-primary w-20 m-2" name="lounge_id" value="${bag.lounge_id}">글삭제</button>
							</form>
						</div>
				<div class="bg-light rounded">
					<div style="display: flex; gap: 20px;">
						<div>
							<h5>
								<span class="badge bg-secondary">라운지</span>
							</h5>
						</div>
						<div><span class="badge bg-warning">${bag.lounge_pet_type}</span></div>
					</div>
					<div>
					<h3 style="padding: 5px;">${bag.lounge_title}</h3>	
					</div>		
					<hr>
					<div style="padding: 20px;">${bag.lounge_content}</div>
					<!--썸네일 추가할부분-->
					<div style="display: flex; justify-content: space-between;">
						<div style="padding: 5px;">${bag.lounge_writer}</div>
						<div style="padding: 5px;">댓글: 1</div>
						<div style="padding: 5px;">좋아요수</div>
						<div style="padding: 5px;">${bag.lounge_date}</div>
					</div>
					<hr>
				</div>			
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
	<script
		src="../resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="../resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="../resources/js/main.js"></script>
</body>

</html>