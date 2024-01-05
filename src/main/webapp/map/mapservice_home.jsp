<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로드펫-지도 홈</title>
		<%@ include file="../header.jsp"%>
		<%@ include file="../sidebar.jsp"%>
	</head>
	<body>
		<!-- Content Start -->
		<div class="content">
			<div class="container-fluid position-relative bg-white d-flex p-0">
				<!-- Map Start -->
				<div class="container-fluid pt-4 px-4">
	                <div class="row vh-100 bg-light rounded align-items-start justify-content-center mx-0">
	                	<div id="map" style="width:100%;height:90%;position:relative;overflow:hidden;"></div> 
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
    		let gps_lat;	// gps 위도
    		let gps_lon;	// gps 경도
    		let gps_marker;	// gps 마커
	    	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		        mapOption = {
		            center: new kakao.maps.LatLng(37.5665, 126.9780), // 지도의 중심좌표
		            level: 3 // 지도의 확대 레벨
		        };
		    // 지도를 표시할 div와 지도 옵션으로 지도 생성
		    var map = new kakao.maps.Map(mapContainer, mapOption);
		    
		 	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		    var mapTypeControl = new kakao.maps.MapTypeControl();

		    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		    var zoomControl = new kakao.maps.ZoomControl();
		    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		    
		    // 마커 이미지 설정
		    var imageSrc = '../resources/img/UserGPSLocation.png', // 마커이미지의 주소입니다    
			    imageSize = new kakao.maps.Size(48, 48), // 마커이미지의 크기입니다
			    imageOption = {offset: new kakao.maps.Point(24, 12)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
			      
			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		    
		    // 내 위치 찾기 구문
		    if (navigator.geolocation) {
		        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		        navigator.geolocation.getCurrentPosition(function(position) {
		            
		            gps_lat = position.coords.latitude; // 위도
		            gps_lon = position.coords.longitude; // 경도
		            
		            var locPosition = new kakao.maps.LatLng(gps_lat, gps_lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		            
		            // 마커를 표시합니다
		            displayMyLocationMarker(locPosition);
		          });
		    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치를 설정합니다
		        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);
		        displayMyLocationMarker(locPosition);
		    }
			
		    <!-- Functions -->
			 // 지도에 마커를 표시하는 함수입니다
			 function displayMyLocationMarker(locPosition) {
			     // 마커를 생성합니다
			     gps_marker = new kakao.maps.Marker({  
			         map: map, 
			         position: locPosition,
			         image: markerImage
			     }); 
				 gps_marker.setMap(map);
			     // 지도 중심좌표를 접속위치로 변경합니다
			     map.setCenter(locPosition);      
			 }
			 
    	</script>
		<!-- Map Script End -->
	</body>
</html>