<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mybatis.myapp.HomeController"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Stylish Portfolio - Start Bootstrap Template</title>


<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Fruktur&display=swap"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resources/css/styles.css" rel="stylesheet" />

</head>
<body id="page-top">

	<c:set var="cmp" value="${isLoggedin}" scope="session" />

	<!-- Navigation-->
	<a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li class="sidebar-brand">메뉴</li>
			<li class="sidebar-nav-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="sidebar-nav-item"><a href="https://www.handong.edu/">About
					한동대학교</a></li>
			<li class="sidebar-nav-item"><a href="goboard">수강후기</a></li>

			<c:if test="${cmp==false}">
				<li class="sidebar-nav-item"><a href="${pageContext.request.contextPath}/login">로그인</a></li>
			</c:if>
			<c:if test="${cmp==true}">
				<li class="sidebar-nav-item"><a href="logout">로그아웃</a></li>
			</c:if>

		</ul>
	</nav>
	<!-- Header-->
	<header class="masthead d-flex align-items-center">
		<div class="container px-4 px-lg-5 text-center">
			<h1 class="mb-1">한동 호가학수</h1>
			<h3 class="mb-5">
				<em>호랑이는 가죽을 남기고, 학생은 수강후기를 남긴다.</em>
			</h3>
			
			<c:if test="${cmp==false}">
				<a class="btn btn-primary btn-xl" id="loginButton"
					href="${pageContext.request.contextPath}/login">Login</a>
			</c:if>
			<c:if test="${cmp==true}">
				<a class="btn btn-primary btn-xl" id="gotoButton" href="goboard"
					style="">수강후기 남기기</a>
			</c:if>
		</div>
	</header>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->

	<script src="js/scripts.js"></script>
	<script src="${path}/resources/js/scripts.js"></script>

	<script>
        </script>
</body>
</html>
