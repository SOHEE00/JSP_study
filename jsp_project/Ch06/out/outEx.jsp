<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> out 객체 연습 </h2>
	<%
		String name ="홍길동";
		out.println("<p> 이름은" + name + "입니다 </p>");
		out.write("<p> 이름은" + name + "입니다 </p>");
	%>
	<p> 이름은 <%= name %> 입니다. </p>
</body>
</html>