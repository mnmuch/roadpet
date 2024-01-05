<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>찾아주세요! | 웹 제목</title>
</head>
<body>
	<button style="background: red; color: white;" id="b1">ajax 실행</button>
    <div id="map" style="width: 80%; min-width: 600px; height: 800px; margin: 0 auto"></div>
	<script type="text/javascript" src="../resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1991e110a0fbe362aac08fce1f5fba8c"></script>

    <script>
        var mapContainer = document.getElementById('map');
        var mapOption = {
            center: new kakao.maps.LatLng(0, 0), // 초기 값은 0,0으로 설정
            level: 3
        };

        var map = new kakao.maps.Map(mapContainer, mapOption);

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var lat = position.coords.latitude;
                var lon = position.coords.longitude;

                var locPosition = new kakao.maps.LatLng(lat, lon);
                var message = '<div style="padding:5px;">여기에 계신가요?!</div>';

                displayMarker(locPosition, message);
            }, function (error) {
                console.error('Error getting user location:', error);
                setDefaultMap();
            });
        } else {
            console.error('Geolocation not supported.');
            setDefaultMap();
        }

        function setDefaultMap() {
            // 기본 위치 (예: 서울)로 설정
            var defaultPosition = new kakao.maps.LatLng(37.5665, 126.9780);
            map.setCenter(defaultPosition);
        }

        function displayMarker(locPosition, message) {
            var marker = new kakao.maps.Marker({
                map: map,
                position: locPosition
            });

            var infowindow = new kakao.maps.InfoWindow({
                content: message,
                removable: true
            });

            infowindow.open(map, marker);
            map.setCenter(locPosition);
        }

        var positions = [];

        var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

        for (var i = 0; i < positions.length; i++) {
            var imageSize = new kakao.maps.Size(24, 35);
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            var marker = new kakao.maps.Marker({
                map: map,
                position: positions[i].latlng,
                title: positions[i].title,
                image: markerImage
            });
        }
        
        $(function () {
            // ajax 실행 버튼 누를 시 불러오기
    		$('#b1').click(function() {
                $.ajax({
                    url: "map",
                    dataType: "json",
                    success: function (json) {
                        console.log(json);

                        var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
                        var mapOption = {
                            center: new kakao.maps.LatLng(json[0].lat, json[0].lon), // 첫 번째 좌표를 중심으로 지도 생성
                            level: 3 // 지도의 확대 레벨
                        };

                        map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

                        for (var i = 0; i < json.length; i++) {
                            // 마커가 표시될 위치입니다 
                            var markerPosition = new kakao.maps.LatLng(json[i].lat, json[i].lon);

                            // 마커를 생성합니다
                            var marker = new kakao.maps.Marker({
                                position: markerPosition
                            });

                            // 마커가 지도 위에 표시되도록 설정합니다
                            marker.setMap(map);
                        }
                    },// success
                    error: function(xhr,ajaxSettings, thrownError){
                    	alert("오류 발생");
                    },
                    complete:function(){
                    	location.replace();
                    }
                }); // ajax
            });
        })
    </script>

</body>
</html>