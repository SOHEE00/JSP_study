<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>별표 출력해보기 (5-4-3-2-1)</h2>
	
<%
	int i,j;
	for(i=0; i<5; i++) 
	{
		for(j=0; j<=(i); j++) {
	%>
		<%='*' %>
	<%
	}
	%>
	<br>
	<%
	}
	%>
	<br>
	<%
	int x,y;
	for(x=5; x>=0; x--) 
	{
		for(y=1; y<=(x); y++) {
	%>
		<%='*' %>
	<%
	}
	%>
	<br>
	<%
	}
	%>
</body>
</html>