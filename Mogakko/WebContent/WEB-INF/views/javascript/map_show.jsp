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
	
	var marker1 = new CustomMarker(37.709406, 127.048289, 9);
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
	

	
	
	
</script>

<div class="form-group">
						<label for="board_writer_name">작성자</label>
						<input type="text" id="board_writer_name" name="board_writer_name" class="form-control" value="${readContentBean.content_writer_name }" disabled="disabled"/>
					</div>

<!-- function CustomMarker(lat, lng, crimeID, crimeGubun, serious, crimeDate, crimeTime){
		
		//심각성1
		var contents_html = "";
		if(serious == 1)
		{
			contents_html  = '<div style="padding-top:5px;padding-bottom:5px;padding-right:5px;background-color:#b12121;color:white; text-align:center; border:1px solid #831616; border-radius:15px; opacity:75%" onmouseover="javascript:overCrime(\''+crimeID+'\');" onmouseout="javascript:outCrime(\''+crimeID+'\');">'
							+ '<div style="font-weight: bold; font-size:14px"> '+crimeGubun+' </div>'
							+ '<div style="font-weight: normal; font-size:13px; margin-top:3px; display:none" id="'+crimeID+'"> '+crimeDate+' <br/> '+crimeTime+' </div>' 
							+'</div>';			
		}
		//심각성2
		if(serious == 2)
		{
			contents_html  = '<div style="padding-top:5px;padding-bottom:5px;padding-right:5px;background-color:#e0692f;color:white; text-align:center; border:1px solid #831616; border-radius:15px; opacity:75%" onmouseover="javascript:overCrime(\''+crimeID+'\');" onmouseout="javascript:outCrime(\''+crimeID+'\');">'
								+ '<div style="font-weight: bold; font-size:14px"> '+crimeGubun+' </div>'
								+ '<div style="font-weight: normal; font-size:13px; margin-top:3px; display:none" id="'+crimeID+'"> '+crimeDate+' <br/> '+crimeTime+' </div>' 
								+'</div>';				
		}
		
		//심각성3
		if(serious == 3)
		{
			contents_html  = '<div style="padding-top:5px;padding-bottom:5px;padding-right:5px;background-color:#d3cc07;color:white; text-align:center; border:1px solid #a09b07; border-radius:15px; opacity:75%" onmouseover="javascript:overCrime(\''+crimeID+'\');" onmouseout="javascript:outCrime(\''+crimeID+'\');">'
							+ '<div style="font-weight: bold; font-size:14px"> '+crimeGubun+' </div>'
							+ '<div style="font-weight: normal; font-size:13px; margin-top:3px; display:none" id="'+crimeID+'"> '+crimeDate+' <br/> '+crimeTime+' </div>' 
							+'</div>';	
		}
		
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(lat, lng),
		    map: map,
		    title: crimeGubun, //추후 '모각코'로 변경
		    icon: {
		    	content: contents_html, 
			    size: new naver.maps.Size(38, 58),
			    anchor: new naver.maps.Point(19, 58),
		    	
		    }, 
		    draggable: false	    
		}); 
		return marker;		
	};
	
	var marker1 = new CustomMarker(37.709406, 127.048289, "crime1", "살인", 1, "2020-08-27", "14:23:23");
	var marker2 = new CustomMarker(37.708603, 127.048486, "crime2", "강도", 2, "2020-08-28", "14:23:23");
	var marker3 = new CustomMarker(37.707635, 127.046383, "crime3", "사기", 3, "2020-08-29", "14:23:23");
	
	function overCrime(childID){
		$("#"+childID).show();
	} 

 	function outCrime(childID){
		$("#"+childID).hide();
	}  
		
   /* $("#title").click(function(){
        alert("테스트 클릭 성공");
   } */
 -->





