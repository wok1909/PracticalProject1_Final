<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mybatis.myapp.dao.BoardDAO,com.mybatis.myapp.board.BoardVO "%>
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
<body>
	<header class="masthead d-flex align-items-center">
		<div class="container px-4 px-lg-5">
			<h1 class="md-1">Edit Form</h1>
			<form action="../editok" method="post">
				<input type="hidden" name="seq" value="${u.getSeq() }" />
				<table>
					<tr>
						<td>Category:</td>
						<td><input type="text" name="category"
							value="${u.getCategory() }" /></td>
					</tr>
					<tr>
						<td>Title:</td>
						<td><input type="text" name="title" value="${u.getTitle() }" /></td>
					</tr>
					<tr>
						<td>Prof:</td>
						<td><input type="text" name="prof" value="${u.getProf() }" /></td>
					</tr>
					<tr>
						<td>Writer:</td>
						<td><input type="text" name="writer" value="${u.getWriter()}" /></td>
					</tr>
					<tr>
						<td>Content:</td>
						<td><textarea cols="50" rows="5" name="content">${u.getContent()}</textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Edit Post" /> <input
							type="button" value="Cancel" onclick="history.back()" /></td>
					</tr>
				</table>
			</form>
		</div>
	</header>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->

	<script src="js/scripts.js"></script>
	<script src="${path}/resources/js/scripts.js"></script>
</body>
</html>
