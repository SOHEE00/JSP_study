<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> registerForm.jsp </h2>
	<hr>
	<form action="registerProc2.jsp" method="post">
		<table border="1" style="border-collapse:collapse;">
			<tr height="60" align="center">
				<td width="100"> Username </td> 
				<td width="200"> 
					<input type="text" name="username"> 
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="100"> Email </td> 
				<td width="200"> 
					<input type="text" name="email" > 
				</td>
			</tr>	
			<tr height="60" align="center">
				<td colspan="2" > 
					<input type="submit" value="확인" >
					&nbsp &nbsp
					<input type="reset" value="취소" >
				</td>
			</tr>
		</table>
	</form>
</body>
</html>