<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mybatis.myapp.dao.BoardDAO,com.mybatis.myapp.board.BoardVO "%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Show Detail</title>
</head>
<body>
	<h1>Show Detail</h1>

		<input type="hidden" name="seq" value="${u.getSeq() }" />
		<table>
			<tr>
				<td>Category:</td>
				<td>${u.getCategory()}</td>
			</tr>
			<tr>
				<td>Title:</td>
				<td>${u.getTitle() }</td>
			</tr>
			<tr>
				<td>Prof:</td>
				<td>${u.getProf() }</td>
			</tr>
			<tr>
				<td>Writer:</td>
				<td>${u.getWriter()}</td>
			</tr>
			<tr>
				<td>Content:</td>
				<td>${u.getContent()}</td>
			</tr>
			<tr>
				<td><input type="button" value="Go to Main" onclick="history.back()" /><td>
			</tr>
		</table>

</body>
</html>
