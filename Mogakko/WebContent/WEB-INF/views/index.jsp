<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c"  uri ="http://java.sun.com/jsp/jstl/core" %>
<c:set var = 'root' value = "${pageContext.request.contextPath}/"/>
        
<!DOCTYPE html>
<html>
<title>프로젝트-mogakko</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<style>
	body,h1 {font-family: "Raleway", sans-serif}
	body, html {height: 100%}
	.bgimg {
	  background-image: url('image/image_index.png');
	  min-height: 100%;
	  background-position: center;
	  background-size: cover;
	}
	</style>

<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
 
 <!-- navbar(top) -->
  <div class = "nav-top">
	  <div class="display-topleft padding-large w3-xlarge">
	    mogakko
	    
	    <!-- Right-sided navbar links. Hide them on small screens -->    
		<div class="w3-right w3-hide-small">
		  <a href="${root}user/login" class="w3-bar-item w3-button">로그인</a>      
		</div>
	  </div>	  
  </div>
    
    
    
  <div class="w3-display-middle">
    <h1 class="w3-jumbo w3-animate-top">mogakko</h1>
    <hr class="w3-border-grey" style="margin:auto;width:40%">
    <p class="w3-large w3-center">느슨하지만 꾸준하게, 모여서 각자 코딩하자!</p>
    
    <!-- Tabs -->
    <div id="Flight" class="w3-container w3-white w3-padding-16 myLink">
    
      <div class="w3-row-padding" style="margin:0 -16px;">
        <div class="w3-half">         
          <input class="w3-input w3-border" type="text" >
        </div>
        
      </div>
      <p>
      <button class="w3-button w3-dark-grey" onclick ="location.href= '${root}main'">모각코 모임검색</button></p>
    </div>
    
    
  </div> 
  
  
</div>

</body>
</html>
