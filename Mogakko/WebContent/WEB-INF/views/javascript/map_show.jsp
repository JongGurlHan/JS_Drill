<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id ="map" style = "width:100%; height:900px;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=l8cf5xz3fl"></script>
<script>
	//지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
	var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일
	
	//map 생성
	var map = new naver.maps.Map('map', {
	    center: new naver.maps.LatLng(37.3595704, 127.105399),
	    zoom: 15
	});
	
	function CustomMarker(lat, lng)
	
	//marker생성
	var marker = new naver.maps.Marker({
	    position: new naver.maps.LatLng(37.3595704, 127.105399),
	    map: map,
	    title: '모각코',
	    icon: {
	    	content: [
                '<div style="padding-top:5px;padding-bottom:5px;padding-left:5px;pading-right:5px;background-color:#00BFFF;color:white; text-align:center;border:1px solid #00BFFF; border-radius:14px; opacity:75%" onmouseover="javascript:zoomIn(\'detail\');" onmouseout="javascript:zoomOut(\'detail\');">' +
                '<div id ="title" style = "font-weight: bold; font-size:14px;">모각코</div>' +
                '<div id = "detail" style="font-weight: normal; font-size:14px; margin-top:2px; display:none">더 알아보기</div>' 
            ].join(''),
		    size: new naver.maps.Size(38, 58),
		    anchor: new naver.maps.Point(19, 58),
	    	
	    },
	    draggable: false	    
	});
	
	   
	
	
 	function zoomIn(childID){
		$("#" +childID).show();
	} 

 	function zoomOut(childID){
		$("#" +childID).hide();
	}  
	
	
   $("#title").click(function(){
        alert("테스트 클릭 성공");
    });

	  
	
	
	
</script>
