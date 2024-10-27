<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>1-10까지 출력</h2>
	<%
		for(int i =1; i<=10; i++) {
	%>
	<%=i %><br>
	<%
	}
	%>
	
	<h2>구구단 출력</h2>
	<%
		for(int x=2; x<=9; x++) {
			for (int y=1; y<=9; y++) {
	%>
	<%=x %>*<%=y %>=<%=x*y %><br>
	<%
	}
	%>
	<br>
	<%
	}
	%>
	
	<h2>별표 출력</h2>
	<%
		for (int s=0; s<5; s++) {
			for (int c=0; c<=(s); c++) {
	%>
	<%='*' %>
	<%
	}
	%>
	<br>
	<%
	}
	%>
	<h2>별표 반대로 출력</h2>
	<%
		for (int h=5; h>=0; h--){
			for (int g=1; g<=(h); g++){
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