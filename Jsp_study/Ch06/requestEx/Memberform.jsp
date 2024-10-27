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
		<td width="100">이름</td>
		<td width="200"> <input type="text" name="name"> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">학번</td>
			<td width="200">
				<input type="text" name="school"> </td>
		</tr>
		<tr height="60" align ="center">
			<td width="100">전화번호</td>
			<td width="200">
				<input type="text" name="number"> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">좋아하는 캐릭터</td>
			<td width="200">
				<input type="checkbox" name="chara" value="rion">라이언
				<input type="checkbox" name="chara" value="uhpeach">어피치
				<input type="checkbox" name="chara" value="muji">무지
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