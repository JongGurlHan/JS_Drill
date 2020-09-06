<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	
	
	/* $.ajax({
		url: '/main/LatLngTester2.jsp',
		type: 'get',
		success : function(data){
			alert('연결성공');
				
			},
			error : function(){
		          alert('연결실패 ㅠㅠ');
		    }
		}
	}) */
	
	var marker2 = new CustomMarker(37.708603, 127.048486, 10);
	var marker3 = new CustomMarker(37.707635, 127.046383, 11);
	
	function overDetail(childID){
		$("#"+childID).show();
	} 

 	function outDetail(childID){
		$("#"+childID).hide();
	}  
		
   /* $("#title").click(function(){
        alert("테스트 클릭 성공");
   } */
	

</body>
</html>