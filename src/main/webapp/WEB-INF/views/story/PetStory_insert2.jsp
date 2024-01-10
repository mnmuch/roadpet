<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
	
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/roadpet/resources/lib/chart/chart.min.js"></script>
    <script src="/roadpet/resources/lib/easing/easing.min.js"></script>
    <script src="/roadpet/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="/roadpet/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/roadpet/resources/lib/tempusdominus/js/moment.min.js"></script>
    <script src="/roadpet/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="/roadpet/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="/roadpet/resources/js/main.js"></script>
    <!-- Favicon -->
    <link href="/roadpet/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/roadpet/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/roadpet/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/roadpet/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/roadpet/resources/css/style.css" rel="stylesheet">
</head>

<body>
	<nav
		class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
		<a href="index.jsp" class="navbar-brand d-flex d-lg-none me-4">
			<h2 class="text-primary mb-0">
				<i class="fa fa-hashtag"></i>
			</h2>
		</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
			class="fa fa-bars"></i>
		</a>
		<form class="d-none d-md-flex ms-4">
			<input class="form-control border-0" type="search"
				placeholder="Search">
		</form>
		<div class="navbar-nav align-items-center ms-auto">
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"> <i class="fa fa-envelope me-lg-2"></i>
					<span class="d-none d-lg-inline-flex">Message</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
					<a href="#" class="dropdown-item">
						<div class="d-flex align-items-center">
							<img class="rounded-circle" src="/roadpet/resources/img/user.jpg"
								alt="" style="width: 40px; height: 40px;">
							<div class="ms-2">
								<h6 class="fw-normal mb-0">Jhon send you a message</h6>
								<small>15 minutes ago</small>
							</div>
						</div>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<div class="d-flex align-items-center">
							<img class="rounded-circle" src="/roadpet/resources/img/user.jpg"
								alt="" style="width: 40px; height: 40px;">
							<div class="ms-2">
								<h6 class="fw-normal mb-0">Jhon send you a message</h6>
								<small>15 minutes ago</small>
							</div>
						</div>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<div class="d-flex align-items-center">
							<img class="rounded-circle" src="/roadpet/resources/img/user.jpg"
								alt="" style="width: 40px; height: 40px;">
							<div class="ms-2">
								<h6 class="fw-normal mb-0">Jhon send you a message</h6>
								<small>15 minutes ago</small>
							</div>
						</div>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item text-center">See all message</a>
				</div>
			</div>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"> <i class="fa fa-bell me-lg-2"></i> <span
					class="d-none d-lg-inline-flex">Notificatin</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
					<a href="#" class="dropdown-item">
						<h6 class="fw-normal mb-0">Profile updated</h6> <small>15
							minutes ago</small>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<h6 class="fw-normal mb-0">New user added</h6> <small>15
							minutes ago</small>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item">
						<h6 class="fw-normal mb-0">Password changed</h6> <small>15
							minutes ago</small>
					</a>
					<hr class="dropdown-divider">
					<a href="#" class="dropdown-item text-center">See all
						notifications</a>
				</div>
			</div>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown"> <img class="rounded-circle me-lg-2"
					src="/roadpet/resources/img/user.jpg" alt=""
					style="width: 40px; height: 40px;"> <span
					class="d-none d-lg-inline-flex">Hong</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
					<a href="#" class="dropdown-item">My Profile</a> <a href="#"
						class="dropdown-item">Settings</a> <a href="#"
						class="dropdown-item">Log Out</a>
				</div>
			</div>
		</div>
	</nav>

	<!-- Sidebar Start -->
	<div class="sidebar pe-4 pb-3">
		<nav class="navbar bg-light navbar-light">
			<a href="index.html" class="navbar-brand mx-4 mb-3">
				<h3 class="text-primary">
					<i class="fa fa-hashtag me-2"></i>RoadPet
				</h3>
			</a>
			<div class="d-flex align-items-center ms-4 mb-4">
				<div class="position-relative">
					<img class="rounded-circle" src="../resources/img/default.jpg"
						alt="" style="width: 40px; height: 40px;">
				</div>
				<div class="ms-3">
					<h6 class="mb-0">비회원</h6>
					<span>로그인 해주세요.</span>
				</div>
			</div>
			<div class="navbar-nav w-100">
				<a href="index.html" class="nav-item nav-link"><i
					class="fa fa-tachometer-alt me-2"></i>마이펫정보</a> <a href="#"
					class="nav-item nav-link"><i class="fa fa-laptop me-2"></i>커뮤니티</a>
				<a href="#" class="nav-item nav-link"><i
					class="fa fa-keyboard me-2"></i>펫 스토리</a> <a href="widget.html"
					class="nav-item nav-link"><i class="fa fa-th me-2"></i>지도서비스</a>


			</div>
		</nav>
	</div>
	<!-- 404 Start -->
	<div class="container-fluid pt-4 px-4">
		<div
			class="row vh-100 bg-light rounded align-items-center justify-content-center mx-0">
			<div class="col-md-6 text-center p-4">
				<i class="bi bi-exclamation-triangle display-1 text-primary"></i>
				<h1 class="display-1 fw-bold">완료!</h1>
				<h1 class="mb-4">스토리 등록 성공</h1>
				<a class="btn btn-primary rounded-pill py-3 px-5" href="story_list2">전체목록</a>
				<a class="btn btn-primary rounded-pill py-3 px-5" href="">내가쓴글목록</a>
			</div>
		</div>
	</div>
	<!-- 404 End -->


</body>
</html>