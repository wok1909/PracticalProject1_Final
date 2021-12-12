<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Simple line icons-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Fruktur&display=swap" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resources/css/styles.css" rel="stylesheet" />

<style>
* {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	font-family: sans-serif;
}

.loginForm:not(masthead) {
	position: absolute;
	width: 300px;
	height: 400px;
	padding: 30px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
}

.loginForm h2 {
	text-align: center;
	margin: 30px;
}

.idForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.passForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.id {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.pw {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btn:hover {
	background-position: right;
}

.bottomText {
	text-align: center;
}
</style>
</head>

<body width="100%" height="100%">
	
	<header class="masthead">
		<form action="loginOk" method="post" class="loginForm">
			<h2>Login</h2>
			<div class="idForm">
				<input type="text" class="id" placeholder="ID" name="userid" />
			</div>
			<div class="passForm">
				<input type="password" class="pw" placeholder="PW" name="password" />
			</div>
			<button type="submit" class="btn" onclick="button()">LOG IN</button>

			<div class="bottomText">
				Don't you have ID? <a href="${pageContext.request.contextPath}/login/register">sign up</a>
			</div>
		</form>
	</header>
</body>
</html>

<%-- <body>
	<div style='width:100%;text-align:center;padding-top:100px'>
	<img src = "../img/snowman.jpeg" height="250">
	<form method ="post" action="loginOk">
	
	<div>
		<label>User ID: </label>
		<input type ='text' name='userid' />
	</div>
	<div>
		<label>Password: </label>
		<input type ='password' name='password' />
	</div>
	
	<button type='submit'>login</button>
	</form>
	<div class="form-group">
		<a class="btn btn-deep-orange btn-block" href="${pageContext.request.contextPath}/login/register">회원 가입</a>
	</div>
	</div>
</body>
</html>  --%>