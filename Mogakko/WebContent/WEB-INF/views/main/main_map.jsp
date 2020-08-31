<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<c:set var = 'root' value = "${pageContext.request.contextPath}/"/>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
	<title>프로젝트-mogak</title>
	<!-- Bootstrap CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<style>	
	  body{
	 	padding-top: 70px;
	 	
	 	} 
	 </style>
	<title>프로젝트-mogak</title>
</head>

<body>
	<c:import url = "/WEB-INF/views/include/top_menu.jsp"/>	
	<c:forEach var='obj' items='${getContentLatLng}'>
		<h4 class="card-title">${obj.content_lat}</h4>
		<h4 class="card-title">${obj.content_lng}</h4>
	</c:forEach>			
	
	
	
	<div id ="map" style = "width:100%; height:900px;"></div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=l8cf5xz3fl"></script>
	<script>
	//지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
	var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일
	
	//map 생성
	var map = new naver.maps.Map('map', {
	    center: new naver.maps.LatLng(37.709406, 127.048289),
	    zoom: 15
	});
	
	function CustomMarker(lat, lng, content_idx){
		
		//심각성1
		var contents_html =  
			'<div style="padding-top:5px; padding-bottom:5px; padding-right:5px; background-color:#00BFFF;' 
			+ 'color:white; text-align:center; border:1px solid #00BFFF; border-radius:15px; opacity:75%"' 
			+ 'onmouseover="javascript:overDetail(\''+content_idx+'\');" onmouseout="javascript:outDetail(\''+content_idx+'\');">'
			+ '<div style="font-weight: bold; font-size:14px"> '+"모각코"+' </div>'
			+ '<div  id="'+content_idx+'" style="font-weight: normal; font-size:13px; margin-top:3px; display:none"> '+"자세히 알아보기"+' </div>' 
			+'</div>';			
			
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(lat, lng),
		    map: map,		  
		    icon: {
		    	content: contents_html, 
			    size: new naver.maps.Size(38, 58),
			    anchor: new naver.maps.Point(19, 58)		    	
		    }, 
		    draggable: false	    
		}); 
		return marker;		
	};
	
	
	
	
	/* var marker2 = new CustomMarker(37.708603, 127.048486, 10);
	var marker3 = new CustomMarker(37.707635, 127.046383, 11); */
	
	function overDetail(childID){
		$("#"+childID).show();
	} 

 	function outDetail(childID){
		$("#"+childID).hide();
	}  
		
   /* $("#title").click(function(){
        alert("테스트 클릭 성공");
   } */
	

	
	
	
</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<%-- <c:import url = "/WEB-INF/views/javascript/map_show.jsp"/>	 --%>
	
	
</body>

</html>




























