<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>MemberFormm.jsp</h2>
	<form action="MemberProcc.jsp" method="get">
		<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">이름</td>
		<td width="200"><input type="text" name="name"></td>
		<tr>
		
		<tr height="60" align="center">
		<td width="100">학번</td>
		<td width="200"><input type="text" name="schoolnumber"></td>
		<tr>
		
		<tr height="60" align="center">
		<td width="100">학과</td>
		<td width="200">
		<select name="major">
		<option selected>SW</option>
		<option>Hotel</option>
		<option>Food</option>
		</select>
		</td>
		</tr>
		
		<tr height="60" align="center">
		<td width="100">좋아하는 캐릭터</td>
		<td width="200">
		<input type="checkbox" name="chara" value="rion">라이언
		<input type="checkbox" name="chara" value="uhpeach">어피치
		<input type="checkbox" name="chara" value="mugi">무지
		</td>
		</tr>
		
		<tr height="60" align="center">
		<td colspan="2">
		<input type="submit" value="확인">
		&nbsp &nbsp
		<input type="reset" value="취소">
		</td>
		</tr>

		</table>
	</form>
</body>
</html>