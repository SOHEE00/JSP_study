<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>	
	<h2>스크립트릿 연습 (scriptLet)</h2>
	<hr>
	<h3>1-10까지 출력</h3>
	<%	
		for(int i =1; i <=10; i++) {
			out.println(i + "<br>");
		}
	%>
	<hr>
	<%
		//표현식을 이용하여 1-10까지 출력
		for(int i =1; i <=10; i++) {
	%>
			<%=i %> <br>
	<%
		}
	%>
	<h2>구구단 출력</h2>
	<%
		for (int i = 2; i<=9; i++) {
			for(int j = 1; j<=9; j++) {
			%>
			<%=i %>*<%=j %>=<%=i*j %> <br>
	<%
	}
	%>
		<br>
		<% 
		}
	%>
</body>
</html>