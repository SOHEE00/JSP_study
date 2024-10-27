<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Requestform.jsp</h2>
	<hr>
	<form action="RequestProc.jsp" method="get">
	<table border="1" style="border-collapse:collapse;">
	<tr height="60" align="center">
	<td width="100">아이디</td>
	<td width="200"><input type="text" name="id"></input></td>
	</tr>
	
	<tr height="60" align="center">
	<td width="100">직업</td>
	<td width="200">
	<select name="job">
	<option selected>SW Engineer</option>
	<option>Web Front Engineer</option>
	<option>Web BackEnd Engineer</option>
	</select>
	</td>
	</tr>
	
	<tr height="60" align="center">
	<td width="100">취미</td>
	<td width="200">
	<input type="checkbox" name="hobby" value="study">공부
	<input type="checkbox" name="hobby" value="movie">영화
	<input type="checkbox" name="hobby" value="sports">스포츠
	</td>
	</tr>


	
	<tr height="60" align="center">
	<td colspan="2">
	<input type="submit" vlaue="확인">
	&nbsp &nbsp
	<input type="reset" value="취소">
	</tr>
	</table>
	</form>
</body>
</html>