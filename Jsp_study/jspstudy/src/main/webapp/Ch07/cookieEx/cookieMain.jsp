<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		//만약 클라이언트에 쿠키 정보가 있다면 읽어오는 코드
		Cookie[] cookies = request.getCookies();
		//id변수에는 빈 정보
		String id ="";
		if (cookies != null) { //쿠키 정보가 하나라도 있다면,
			//쿠키에 id란 이름으로 정보가 저장되어 있다면, 
			//그 값을 id 변수에 저장함
			for (int i = 0; i <cookies.length; i++) {
				if (cookies[i].getName().equals("id")) {
					id = cookies[i].getValue();
					break;
				}
			}
		}
	 %>
	<h2> 로그인 </h2>
	<hr>
	<form action="cookieProc.jsp" method="get">
	<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">아이디</td>
		<td width="200"> <input type="text" name="id" value=<%=id%>> </td>
		</tr>
	
		<tr height="60" align="center">
		<td width="100">패스워드</td>
		<td width="200"> <input type="text" name="password">
		</tr>
	
		<tr height="60" align="center">
		<td colspan="2" align="center">
			<input type="checkbox" name="cookieUse" value="1"> 아이디저장
		</td>
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