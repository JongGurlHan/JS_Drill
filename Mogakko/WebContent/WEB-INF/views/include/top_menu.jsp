<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<c:set var = 'root' value = "${pageContext.request.contextPath}/"/>
    
    
<!-- 상단 메뉴 부분 -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="${root}main">mogak</a> 
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	        data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>        
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		
		
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
				<a href="${root}user/login" class="nav-link">로그인</a>
			</li>
			
		</ul>
	</div>
</nav>

<div class="inner-container">