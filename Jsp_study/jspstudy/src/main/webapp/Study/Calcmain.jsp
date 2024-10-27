<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>계산기</h2>
	<hr>
	 <form action = "CalcProc.jsp" method="get">
	 	<input type="text" name="num1">
	 	<select name="op">	
	 		<option value="+">+</option>
	 		<option vlaue="-">-</option>
	 		<option vlaue="*">*</option>
	 		<option vlaue="/">/</option>
	 	</select>
	 	<input type="text" name="num2">
	 	<input type="submit" value="계산">
	 	<input type="reset" value="reset">
	 </form>
</body>
</html>