<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 스크립트릿 연습 (scriptLet)</h2>
	<hr>
	<h3> 1-10까지 출력 </h3>
	<%
		for(int i =1; i <= 10; i ++ ){
			out.println(i + "<br>");
		}
	%>
	<hr>
	<%
		//표현식을 이용하여 1-10까지 출력
		for(int i =1; i <= 10; i ++ ){
	%>		
			<%= i %> <br>
	<%		
		}	
	%>

</body>
</html>