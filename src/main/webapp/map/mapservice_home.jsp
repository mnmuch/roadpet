<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../resources/css/mapservice.css">
		<title>로드펫-지도 홈</title>
		<%@ include file="../header.jsp"%>
		<%@ include file="../sidebar.jsp"%>
	</head>
	<body>
		<!-- Content Start -->
		<div class="content">
			<div class="container-fluid position-relative bg-white d-flex p-0">
				<!-- Spinner Start -->
		        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
		                <span class="sr-only">Loading...</span>
		            </div>
		        </div>
       			<!-- Spinner End -->
				<!-- Map Start -->
				<div class="container-fluid">
	                <div class="row vh-100 bg-light rounded align-items-start justify-content-center mx-0">
	                	<div class="mapWrapper">
	                		<div id="map" style="width:100%;height:100%;"></div>
	                		<!-- Category Start -->
	                		<ul id="category">
								<li id="missingMark" data-order="0"> 
									<span class="category_bg missing-c"></span>
									실종
								</li>       
								<li id="shelterMark" data-order="1"> 
									<span class="category_bg shelter-c"></span>
									보호소
								</li>  
								<li id="hospitalMark" data-order="2"> 
									<span class="category_bg hospital-c"></span>
									병원
								</li>  
							</ul>
							<!-- Category End -->
							<button type="button" value="" class="ml-btn mylocation-btn"></button>
							<button type="button" class="w-btn writing-btn" onClick="javascript:popOpen();" ></button>
							<!-- Modal Start -->
							<div class="modal-bg" onClick="javascript:popClose();"></div>
							<div class="modal-wrap">
								modal sample
							</div>
							<!-- Modal End -->
	                	</div>
	                </div>
	            </div>
				<!-- Map End -->
			</div>
		</div>
		<!-- Content End -->
		
		<!-- Script Setting -->
		<script type="text/javascript" src="../resources/js/jquery-3.7.1.js"></script>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1991e110a0fbe362aac08fce1f5fba8c"></script>
    	
    	<!-- Map Script Start -->
    	<script>
    		let gpsLat;		// gps 위도
    		let gpsLon;		// gps 경도
    		let gpsMarker;	// gps 마커
	    	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		        mapOption = {
		            center: new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표
		            level: 3 // 지도의 확대 레벨
		        };
		    // 지도를 표시할 div와 지도 옵션으로 지도 생성
		    var map = new kakao.maps.Map(mapContainer, mapOption);
		    
		 	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤 생성
		    var mapTypeControl = new kakao.maps.MapTypeControl();

		    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		    var zoomControl = new kakao.maps.ZoomControl();
		    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		    
		    // 마커 이미지 설정
		    var imageSrc = '../resources/img/gpsMark.gif', // 마커이미지 주소    
			    imageSize = new kakao.maps.Size(48, 48) // 마커 이미지 크기
			    //imageOption = {offset: new kakao.maps.Point(24, 12)}; // 마커이미지의 옵션 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			      
			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
		    
		    // 내 위치 찾기 구문 (using 'gps'naming variable)
		    if (navigator.geolocation) {
		        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		        navigator.geolocation.getCurrentPosition(function(position) {
		            gpsLat = position.coords.latitude; // 위도
		            gpsLon = position.coords.longitude; // 경도
		            
		         	// 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		            var locPosition = new kakao.maps.LatLng(gpsLat, gpsLon);
		            displayMyLocationMarker(locPosition);	// 마커를 표시합니다
		          });
		    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치를 설정합니다
		        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);
		        displayMyLocationMarker(locPosition);
		    }
			
		    <!-- Functions -->
			 // 지도에 마커를 표시하는 함수입니다
			 function displayMyLocationMarker(locPosition) {
			     // 마커를 생성합니다
			     gpsMarker = new kakao.maps.Marker({  
			         map: map, 
			         position: locPosition,
			         image: markerImage
			     }); 
				 gpsMarker.setMap(map);
			     // 지도 중심좌표를 접속위치로 변경합니다
			     map.setCenter(locPosition);      
			 }
			 // 모달 열기
			 function popOpen() {
			    var modalPop = $('.modal-wrap');
			    var modalBg = $('.modal-bg'); 
			
			    $(modalPop).show();
			    $(modalBg).show();
			    //모달 오픈 시 하위 레이어 스크롤 방지구문
				$('html').css({
					overflow: 'hidden',
					height:'auto'
				});
			}
			// 모달 닫기
			 function popClose() {
			   var modalPop = $('.modal-wrap');
			   var modalBg = $('.modal-bg');
			
			   $(modalPop).hide();
			   $(modalBg).hide();
			   // 스크롤 방지 구문 해제
			   $('html').removeAttr('style');
			}
    	</script>
		<!-- Map Script End -->
	</body>
</html>