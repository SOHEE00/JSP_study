<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> footer page </h2>
	<hr>
	<%
		//자바코드가 존재 (스크립트릿(scriptLet))
		int a = 0;
		int b = 5;
	%>
	
	<%= "여기에 코드가 위치하면 화면에 출력됩니다. " %>
	
	<p> email : <%= request.getParameter("email") %></p>
	<p> tel : <%= request.getParameter("tel") %></p>

</body>
</html>