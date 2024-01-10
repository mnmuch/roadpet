<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>펫 스토리</title>
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

<style>
	.find-btn{
		text-align: center;
	}
</style>

</head>

<body>
	<!-- Form Start -->
	<div class="container-fluid pt-4 px-4">
		<div class="row g-4">
			<div class="col-sm-12 col-xl-6">
				<div class="bg-light rounded h-100 p-4">
					<h6 class="mb-4">스토리 작성하기</h6>

					<form action="PetStory_insert2" method="post" enctype="multipart/form-data">
						<div class="mb-3">
							<label for="story_title" class="form-label">제목</label> <input
								type="text" class="form-control" name="story_title"
								value="제목을 입력해주세요.">
						</div>
						

						
						<div class="mb-3">
							<label for="story_content" class="form-label">내용</label>
							<textarea class="form-control"
								name="story_content" style="height: 200px;">test</textarea>
						</div>

						<div class="mb-3">
							<label for="story_photo" class="form-label">사진</label>
							파일 선택: <input type="file" name="file" ><br>
						</div>

						<button class="btn btn-primary w-100 m-2" type="submit">등록하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>


</html>