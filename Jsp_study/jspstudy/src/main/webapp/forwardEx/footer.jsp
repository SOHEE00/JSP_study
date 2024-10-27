<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>footer page</h2>
	<hr>
	<%
	 	//자바코드가 존재(스크립트릿(scriptlet)
	 	int a =0;
	 	int b =5;
	 %>
	 <%="여기에 코드가 위치하면 출력합니다 (=이 붙여져 있으면)" %>
	 
	<p>email : <%= request.getParameter("email") %> </p>
	<p>tel :   <%= request.getParameter("tel") %> </p>
</body>
</html>