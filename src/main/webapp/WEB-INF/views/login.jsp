<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {
	background-color: blue;
	color: white;
	font-size: 15px
}
</style>
</head>
<body>
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
</html>