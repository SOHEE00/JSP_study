<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> calc main page</h2>
	<hr>
	<jsp:forward page="adder.jsp">
		<jsp:param value="10" name="num1"/>
		<jsp:param value="20" name="num2"/>
	</jsp:forward>
</body>
</html>