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
	
	<script>
	$.ajax({
		url: '/resources/test3.jsp',
		type:'get' ,
		success:function(data){
			alert('성공');
			
			$(t).find("person").each(function(){
                var content_location = $(this).find('content_location').text();
                var content_lat = $(this).find('content_lat').text();
                var content_lng = $(this).find('content_lng').text();
                $('<h1></h1>').text(content_location+" "+content_lat+" "+content_lng).appendTo('body');
             });
		},
		 error : function(){
             alert('실패 ㅠㅠ');
			}
		
		
	});
	
	</script>


	
	
	

	

	
	
</body>

</html>




























