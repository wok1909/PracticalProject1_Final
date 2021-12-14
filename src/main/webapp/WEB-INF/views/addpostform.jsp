<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.mybatis.myapp.board.UserVO, java.util.*"%>
<%@ page session = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Add New Post</h1>
	<form action="addok" method="post">
		<table>
			<tr>
				<td>Major:</td>
				<td>
					<select name="category">
                            <option value="글로벌리더십" >글로벌리더십</option>
                            <option value="국제어문" >국제어문</option>
                            <option value="경영경제" >경영경제</option>
                            <option value="법학" >법학</option>
                            <option value="커뮤니케이션" >커뮤니케이션</option>
                            <option value="공간환경시스템" >공간환경시스템</option>
                            <option value="기계제어" >기계제어</option>
                            <option value="콘텐츠융합디자인" >콘텐츠융합디자인</option>
                            <option value="생명과학" >생명과학</option>
                            <option value="전산전자" >전산전자</option>
                            <option value="상담심리" >상담심리</option>
                            <option value="ICT" >ICT</option>
                            <option value="창의융합" >창의융합</option>
                            <option value="AI융합" >AI융합</option>
                      </select>
				</td>
			</tr>
			<tr>
				<td>Title:</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>Prof:</td>
				<td><input type="text" name="prof" /></td>
			</tr>
			<tr>
				<td>Writer:</td>
				<td><input type="text" name="writer" value="${login.userid}" readonly /></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td><a href="list">Go back to Main</a></td>
				<td align="right"><input type="reset" value="Reset" /></td>
				<td align="right"><input type="submit" value="Add Post" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
