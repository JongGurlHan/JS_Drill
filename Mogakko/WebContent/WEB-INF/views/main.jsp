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
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	
	<style>
	 /* body{
	 	padding-top: 70px;
	 	
	 	} */
	 .sidenav {
	  height: 100%;
	  width: 400px;
	  position: fixed;
	  z-index: 1;
	  top: 0;
	  left: 0;
	  background-color: #F0F8FF;
	  overflow-x: hidden;
	  padding-top: 145px;
	  font-size:10px;	
	  text-align:center;
	   
	}
		
	.main {
	  margin-left: 400px; /* Same as the width of the sidenav */	 
	  font-size: 10px; /* Increased text to enable scrolling */
	  padding: 0px 10px;
	}
	
	@media screen and (max-height: 450px) {
	  .sidenav {padding-top: 15px;}
	  .sidenav a {font-size: 18px;}
	}
	.container{
	row-gap: 10px;
	column-gap: 10px;
	display:grid;
	grid-template-columns: 1fr 1fr;
	grid-gap:  1rem;
	flex-direction:column;
	justify-items: center; 
	align-items :end;	
	
	}
	.item{
	background: lightgray;
	}
	img{
	width: 100px;
	height: 100px;
	}
	.multiselect{
		width : 200px;
	}
	.selectBox {
		position: relative;
	}
	.selectBox select {
		width: 100%;
		font-weight: bold;
	}
	.overSelect{
		position: absolute;
		left: 0; right: 0; top: 0; bottom: 0;
	}
	#checkboxes{
		display: none;
		border: 1px #dadada solid;
	}
	#checkboxes label {
		display: block;
	}
	#checkboxes label:hover{
		background-color:#1e90ff;
	}
	.search_form{
	display:inline-block;
	}
	
	
	/* 검색네비바 */
	* {box-sizing: border-box;}
	.topnav {
	  overflow: hidden;
	  background-color: #e9e9e9;
	  padding: 5px;	
	  position: relative;	   
	  z-index: 3;
	  margin:0px;
	  margin-top: 54px;
	}
	
	.topnav .search-container {
	  float: left;
	}
	
	.topnav input[type=text] {
	  padding: 6px;
	  margin-top: 8px;
	  font-size: 17px;
	  border: none;
	}
	
	.topnav .search-container button {
	  float: right;
	  padding: 6px 10px;
	  margin-top: 8px;
	  margin-right: 16px;
	  background: #ddd;
	  font-size: 17px;
	  border: none;
	  cursor: pointer;
	}
	
	.topnav .search-container button:hover {
	  background: #ccc;
	}
	
	@media screen and (max-width: 600px) {
	  .topnav .search-container {
	    float: none;
	  }
	  .topnav a, .topnav input[type=text], .topnav .search-container button {
	    float: none;
	    display: block;
	    text-align: left;
	    width: 100%;
	    margin: 0;
	    padding: 14px;
	  }
	  .topnav input[type=text] {
	    border: 1px solid #ccc;  
	  }
	}
	
	}
	
	
	 	
	</style>
</head>

<body>

	<c:import url = "/WEB-INF/views/include/top_menu.jsp"/>	
	
	<div class="topnav">  

	  <div class="search-container">
	    <form action="/action_page.php">
	      <input type="text" placeholder="지역검색" name="search">
	      <button type="submit"><i class="fa fa-search"></i></button>
	    </form>
	  </div>
	  
	  	  
		 <div class = "multiselect" style ="float: left">
		 	<div class ="selectBox" onclick="showCheckboxes()">
		 		<select>
		 			<option>장소 유형별 검색</option>
		 		</select>
		 		<div class = "overSelect"></div>
		 	</div>
		 	<div id ="checkboxes">
		 		<label for ="cafe"><input type ="checkbox" id ="cafe"/>카페</label>
		 		<label for ="studyroom"><input type ="checkbox" id ="studyroom"/>스터디룸</label>
		 		<label for ="school"><input type = "checkbox" id ="school"/>학교</label>
		 		<label for ="etc"><input type = "checkbox" id ="etc"/>기타</label>
		 	</div>	 
		 </div>	
	
		 <script>
		 	var expanded = false;
		 	function showCheckboxes() {
		 		var checkboxes = document.getElementById("checkboxes");
		 		if(!expanded){
		 			checkboxes.style.display = "block";
		 			expanded = true;
		 		}else{
		 			checkboxes.style.display = "none";
		 			expanded = false;
		 		}	 	
		 	}
		 </script>
	  
	</div>
	
	
	
	<div class="sidenav">
	  <div class = "container">
	  	<div class = "item">
	  		<img src ="image/mogakko_logo.png">
	  		<p>스타벅스 신논현역점 </p>
	  		<p>모집인원: 2명 </p>
	  	</div>	 
	  	<div class = "item">
	  		<img src ="image/mogakko_logo.png">
	  		<p>스타벅스 신논현역점 </p>
	  		<p>모집인원: 2명 </p>
	  	</div>
	  	<div class = "item">
	  		<img src ="image/mogakko_logo.png">
	  		<p>스타벅스 신논현역점 </p>
	  		<p>모집인원: 2명 </p>
	  	</div>
	  	<div class = "item">
	  		<img src ="image/mogakko_logo.png">
	  		<p>스타벅스 신논현역점 </p>
	  		<p>모집인원: 2명 </p>
	  	</div>
	  		<div class = "item">
	  		<img src ="image/mogakko_logo.png">
	  		<p>스타벅스 신논현역점 </p>
	  		<p>모집인원: 2명 </p>
	  	</div>
	  	<div class = "item">
	  		<img src ="image/mogakko_logo.png">
	  		<p>스타벅스 신논현역점 </p>
	  		<p>모집인원: 2명 </p>
	  	</div>
	  </div>	
	</div> 
	
	

	
	<div class = "search_form">
		 <%-- <div class = "search_bar" style ="float: left">
			<input placeholder="잠원동 동아" autocomplete="off" type="text" name="keyword" class="styled__Input-sc-1pc2wuh-1 keOJyH">	
			<svg width="18" height="18" viewBox="0 0 18 18"><g fill="none" fill-rule="evenodd" stroke="#222"><circle cx="7.5" cy="7.5" r="6.5"></circle><path d="M12 12l5 5"></path></g></svg> 
		</div> --%>	
		
	 </div>

	
	  
	<div class="main">
	  <h2>Sidebar</h2>
	  <p>This sidebar is of full height (100%) and always shown.</p>
	  <p>Scroll down the page to see the result.</p>
	  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
	  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
	  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
	  <p>Some text to enable scrolling.. Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.</p>
	</div>
	
	
	 
	 <%-- <c:import url = "/WEB-INF/views/include/bottom_info.jsp"/>	 --%>
	 
</body>
</html>