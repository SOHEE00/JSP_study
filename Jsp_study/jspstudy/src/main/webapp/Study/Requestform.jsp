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
	<td width="100">���̵�</td>
	<td width="200"><input type="text" name="id"></input></td>
	</tr>
	
	<tr height="60" align="center">
	<td width="100">����</td>
	<td width="200">
	<select name="job">
	<option selected>SW Engineer</option>
	<option>Web Front Engineer</option>
	<option>Web BackEnd Engineer</option>
	</select>
	</td>
	</tr>
	
	<tr height="60" align="center">
	<td width="100">���</td>
	<td width="200">
	<input type="checkbox" name="hobby" value="study">����
	<input type="checkbox" name="hobby" value="movie">��ȭ
	<input type="checkbox" name="hobby" value="sports">������
	</td>
	</tr>


	
	<tr height="60" align="center">
	<td colspan="2">
	<input type="submit" vlaue="Ȯ��">
	&nbsp &nbsp
	<input type="reset" value="���">
	</tr>
	</table>
	</form>
</body>
</html>