<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.mybatis.myapp.dao.BoardDAO,com.mybatis.myapp.board.BoardVO, com.mybatis.myapp.dao.UserDAO, com.mybatis.myapp.dao.UserDAO2 ,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- BoardDAO,BoardVO, java.util전부를 import합니다. -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO- 8859-1">

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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Fruktur&display=swap"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resources/css/styles.css" rel="stylesheet" />

<title>free board</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}

<
style>* {
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

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'deleteok/' + id; //확인창에서 확인버튼을 누르면 deletepost.jsp?id=삭제대상의id로 페이지를 이동합니다
	}
</script>
</head>
<body id="page-top">

	<header class="masthead">
		<div class = "fas fa-arrow-circle-left" onclick="history.back()"></div>
		<h1>자유게시판</h1>
		<a href="add">Add New Post</a>
		<table id="list" width="90%">
			<tr>
				<th>Major</th>
				<th>Title</th>
				<th>Prof</th>
				<th>Writer</th>
				<th>Regdate</th>
				<th>Edit</th>
				<th>Delete</th>
				<th>Detail</th>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td>${u.getCategory()}</td>
					<td>${u.getTitle()}</td>
					<td>${u.getProf()}</td>
					<td>${u.getWriter()}</td>
					<td>${u.getRegdate()}</td>
					<c:choose>
						<c:when test="${u.getWriter() == login.userid}">
							<td><a href="editform/${u.getSeq()}">Edit</a></td>
							<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
						</c:when>
						<c:when test="${u.getWriter() != login.userid}">
							<td></td>
							<td></td>
						</c:when>
					</c:choose>
					<td><a href="showDetail/${u.getSeq()}">Detail</a></td>
				</tr>
			</c:forEach>
		</table>

	</header>

</body>
</html>
