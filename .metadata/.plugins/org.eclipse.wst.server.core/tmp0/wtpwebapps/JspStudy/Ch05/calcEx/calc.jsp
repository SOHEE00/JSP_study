<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> calc main page </h2>
	<hr>
	<jsp:include page="adder.jsp">
		<jsp:param value="10" name="num1"/>
		<jsp:param value="20" name="num2"/>
	</jsp:include>



</body>
</html>