<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>requestform.jsp</h2>
	<hr>
	<form action="requestproc.jsp" method="get">
	<table>
		<tr height="60" align="center">
		<td width="100">아이디</td>
		<td width="200"> <input type="text" name="id"> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">직업</td>
			<td width="200">
				<select name="job">
					<option selected>SW Engineer </option>
					<option>Web-Front Engineer</option>
					<option>Web-BackEnd Engineer</option>
				</select>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">취미</td>
			<td width="200">
				<input type="checkbox" name="hobby" value="swimming">수영
				<input type="checkbox" name="hobby" value="takgu">탁구
				<input type="checkbox" name="hobby" value="baegu">배구
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