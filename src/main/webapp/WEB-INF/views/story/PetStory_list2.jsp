<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.roadpet.story.PetStoryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>RoadPet</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- core, fmt, functions, jquery, css가 실행될 수 있게끔 포함시킨 header.jsp 페이지 -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link rel="stylesheet" type="text/css" media="all"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/roadpet/resources/lib/chart/chart.min.js"></script>
<script src="/roadpet/resources/lib/easing/easing.min.js"></script>
<script src="/roadpet/resources/lib/waypoints/waypoints.min.js"></script>
<script src="/roadpet/resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/roadpet/resources/lib/tempusdominus/js/moment.min.js"></script>
<script
	src="/roadpet/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
<script
	src="/roadpet/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

<!-- Template Javascript -->
<script src="/roadpet/resources/js/main.js"></script>
<!-- Favicon -->
<link href="/roadpet/resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="/roadpet/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/roadpet/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/roadpet/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->

<link rel="stylesheet" href="/roadpet/resources/css/style.css">
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

	<!-- nav -->
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
					<img class="rounded-circle" src="../resources/img/user.jpg" alt=""
						style="width: 40px; height: 40px;">
					<div
						class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
				</div>
				<div class="ms-3">
					<h6 class="mb-0">Hong</h6>
					<span>Admin</span>
				</div>
			</div>
			<div class="navbar-nav w-100">
				<a href="index.html" class="nav-item nav-link"><i
					class="fa fa-tachometer-alt me-2"></i>마이펫정보</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>커뮤니티</a>
					<div class="dropdown-menu bg-transparent border-0">
						<a href="button.html" class="dropdown-item">전체</a> <a
							href="typography.html" class="dropdown-item">라운지</a> <a
							href="element.html" class="dropdown-item">정보공유</a> <a
							href="product_list2.jsp" class="dropdown-item">장터게시판</a>
					</div>
				</div>
				<a href="widget.html" class="nav-item nav-link"><i
					class="fa fa-th me-2"></i>지도서비스</a>


			</div>
		</nav>
	</div>
	<!-- Content Start -->
	<div class="content">
		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
			<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
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
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
								<div class="ms-2">
									<h6 class="fw-normal mb-0">Jhon send you a message</h6>
									<small>15 minutes ago</small>
								</div>
							</div>
						</a>
						<hr class="dropdown-divider">
						<a href="#" class="dropdown-item">
							<div class="d-flex align-items-center">
								<img class="rounded-circle" src="img/user.jpg" alt=""
									style="width: 40px; height: 40px;">
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
						data-bs-toggle="dropdown"> <i class="fa fa-bell me-lg-2"></i>
						<span class="d-none d-lg-inline-flex">Notificatin</span>
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
						src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
						<span class="d-none d-lg-inline-flex">John Doe</span>
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
		<!-- Navbar End -->

		<h6 class="mb-4"></h6>
		<div class="table-responsive">
			<%
				ArrayList<PetStoryVO> list = (ArrayList<PetStoryVO>) request.getAttribute("list");
				//ArrayList(작) -- Object(큰)
			%>
			<table class="table" style="text-align: center">
				<thead>
					<tr>
						<th scope="col">NO</th>
						<th scope="col">스토리 이미지</th>
						<th scope="col">제목</th>
						<th scope="col">작성시간</th>
					</tr>
				</thead>
				<tbody>
<%-- 					<%
						for (PetStoryVO bag : list) {
					%>
					<tr>
						<th scope="row"><%=bag.getProduct_id()%></th>
						<td><img src="../resources/img/<%=bag.getProduct_img()%>?"
							width="200" height="200">></td>
						<td><%=bag.getProduct_title()%></td>
						<td><%=bag.getProduct_location()%></td>
						<td><%=bag.getProduct_price()%></td>
						<td><%=bag.getProduct_create()%></td>
						<td><a
							href="product_one?product_id=<%=bag.getProduct_id()%>"> 상세보기
						</a></td>
					</tr>
				</tbody>
				<%
					}
				%> --%>
			</table>
		</div>
	</div>

	<!-- Content End -->
	<!-- Back to Top -->
	<a href="product_insert.jsp"
		class="btn btn-lg btn-primary btn-lg-square back-to-top"> <i
		class="bi bi-plus"></i></a>
</body>

</html>

