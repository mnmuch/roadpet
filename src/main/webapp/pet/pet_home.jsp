<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
</head>
<body>
	<div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    
                    <div class="col-sm-12 col-md-6 col-xl-4">
                        <div class="h-100 bg-light rounded p-4">
                            
                                <h3 class="mb-0">마이펫 정보</h3>
                             <div align = "right">
                                <a href="pet_info_insert">추가</a>
                                <a href="pet_info_update">수정</a>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-3">
                               
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 justify-content-between">
                                        <span>이름</span>
                                        <h6 class="mb-0">둘리</h6>
                                        
                                    </div>
                                </div>
                                </div>    
                                    
                                    <div class="d-flex align-items-center border-bottom py-3">
                                     <div class="w-100 ms-3">
                                     <div class="d-flex w-100 justify-content-between">
                                     	
                                     	<span>분류</span>
                                        <h6 class="mb-0">강아지</h6>
                                     </div>
                                     </div>
                                     </div>
                                    
                                    <div class="d-flex align-items-center border-bottom py-3">
                                     <div class="w-100 ms-3">
                                     <div class="d-flex w-100 justify-content-between">
                                     	<span>품종</span>
                                        <h6 class="mb-0">푸들</h6>
                                     </div>
                                     </div>
                                     </div>
                                    
                                    <div class="d-flex align-items-center border-bottom py-3">
                                     <div class="w-100 ms-3">
                                     <div class="d-flex w-100 justify-content-between">
                                     	<span>성별</span>
                                        <h6 class="mb-0">남</h6>
                                     </div>
                                     </div>
                                     </div>
                                     
                                     <div class="d-flex align-items-center border-bottom py-3">
                                     <div class="w-100 ms-3">
                                     <div class="d-flex w-100 justify-content-between">
                                     <span>생년월일</span>
                                        <h6 class="mb-0">1999-01-05</h6>
                                     </div>
                                     </div>
                                     </div>
                                     
                                     <div class="d-flex align-items-center border-bottom py-3">
                                     <div class="w-100 ms-3">
                                     <div class="d-flex w-100 justify-content-between">
                                     	<span>중성화여부</span>
                                        <h6 class="mb-0">예</h6>
                                     </div>
                                     </div>
                                     </div>
                                     
                                     <div class="d-flex align-items-center border-bottom py-3">
                                     <div class="w-100 ms-3">
                                     <div class="d-flex w-100 justify-content-between">
                                     	<span>백신접종여부</span>
                                        <h6 class="mb-0">아니오</h6>
                                     </div>
                                     </div>
                                     </div>
                                </div>
                            </div>

                        </div>
                    </div>
                   
                    <div class="col-sm-12 col-md-6 col-xl-4">
                        <div class="h-100 bg-light rounded p-4">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h6 class="mb-0">To Do List</h6>
                                <a href="">Show All</a>
                            </div>
                            <div class="d-flex mb-2">
                                <input class="form-control bg-transparent" type="text" placeholder="Enter task">
                                <button type="button" class="btn btn-primary ms-2">Add</button>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-2">
                                <input class="form-check-input m-0" type="checkbox">
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 align-items-center justify-content-between">
                                        <span>Short task goes here...</span>
                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-2">
                                <input class="form-check-input m-0" type="checkbox">
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 align-items-center justify-content-between">
                                        <span>Short task goes here...</span>
                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-2">
                                <input class="form-check-input m-0" type="checkbox" checked>
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 align-items-center justify-content-between">
                                        <span><del>Short task goes here...</del></span>
                                        <button class="btn btn-sm text-primary"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-2">
                                <input class="form-check-input m-0" type="checkbox">
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 align-items-center justify-content-between">
                                        <span>Short task goes here...</span>
                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex align-items-center pt-2">
                                <input class="form-check-input m-0" type="checkbox">
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 align-items-center justify-content-between">
                                        <span>Short task goes here...</span>
                                        <button class="btn btn-sm"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">Testimonial</h6>
                            <div class="owl-carousel testimonial-carousel">
                                <div class="testimonial-item text-center">
                                    <img class="img-fluid rounded-circle mx-auto mb-4" src="img/testimonial-1.jpg" style="width: 100px; height: 100px;">
                                    <h5 class="mb-1">Client Name</h5>
                                    <p>Profession</p>
                                    <p class="mb-0">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                                </div>
                                <div class="testimonial-item text-center">
                                    <img class="img-fluid rounded-circle mx-auto mb-4" src="img/testimonial-2.jpg" style="width: 100px; height: 100px;">
                                    <h5 class="mb-1">Client Name</h5>
                                    <p>Profession</p>
                                    <p class="mb-0">Dolor et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
</body>
</html>