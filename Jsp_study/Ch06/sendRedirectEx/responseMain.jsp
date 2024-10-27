<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>responseMain.jsp</h2>
	<hr>
	<form action="responseProc.jsp" method="get">
	<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">아이디</td>
		<td width="200"> <input type="text" name="id"> </td>
		</tr>
		
		<tr height="60" align="center">
		<td width="100">패스워드</td>
		<td width="200"> <input type="text" name="password"> </td>
		</tr>
	
		<tr height="60" align="center">
			<td colspan="2">
			<input type ="submit" value="확인">
			&nbsp &nbsp
			<input type ="reset" value="취소">
		</table>
		</form>
</body>
</html>