<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>calcMain.jsp(계산기)</h2>
	<hr>
	<form action="calcProc.jsp" method="get">
		<input type="text" name="num1">
		<select name="operator">
			<option value="+"> + </option>
			<option value="-"> - </option>
			<option value="*"> * </option>
			<option value="/"> / </option>
		</select>
		<input type="text" name="num2">
		<input type="submit" value="계산">
		<input type="reset" value="다시 입력">
	</form>
</body>
</html>