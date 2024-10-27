<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 별표 출력해보기(5-4-3-2-1) </h2>
	<%
	int i,j;
		for (i=5; i>=0; i--){
			for (j =1; j <= (i); j++) {
	%>
	<%= '*' %>
	<%
		}
	%>
	<br>
	<%
	}
	%>	

</body>
</html>