<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>MemberForm.jsp</h2>
	<form action="MemberProc.jsp" method="get">
	<table border = "1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">�̸�</td>
		<td width="200"> <input type="text" name="name"> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">�й�</td>
			<td width="200">
				<input type="text" name="school"> </td>
		</tr>
		<tr height="60" align ="center">
			<td width="100">��ȭ��ȣ</td>
			<td width="200">
				<input type="text" name="number"> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">�����ϴ� ĳ����</td>
			<td width="200">
				<input type="checkbox" name="chara" value="rion">���̾�
				<input type="checkbox" name="chara" value="uhpeach">����ġ
				<input type="checkbox" name="chara" value="muji">����
		</tr>
		
		<tr height="60" align="center">
			<td colspan="2">
			<input type ="submit" value="Ȯ��">
			&nbsp &nbsp
			<input type ="reset" value="���">
		</table>
		</form>
</body>
</html>