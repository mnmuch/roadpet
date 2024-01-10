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


<style>
	.find-btn{
		text-align: center;
	}
</style>

</head>

<body>

					<form action="PetStory_insert2" method="post" >
							<label for="story_title" class="form-label">제목</label>
							 <input
								type="text" class="form-control" name="story_title"
								value="aaaaaaszas">
						
						<div class="mb-3">
							<label for="story_date" class="form-label">작성날짜</label> <input
								type="text" class="form-control" name="story_date"
								value="sadsadadsad" >
						</div>
						
						<div class="mb-3">
							<label for="story_content" class="form-label">내용</label>
							<textarea class="form-control"
								name="story_content" style="height: 200px;">tadasdasdasdasest</textarea>
						</div>



						<button class="btn btn-primary w-100 m-2" type="submit">등록하기</button>
					</form>

</body>


</html>