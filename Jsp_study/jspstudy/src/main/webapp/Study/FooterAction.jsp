<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	이메일 : <%=request.getParameter("email") %>
	<br>
	전화번호 : <%=request.getParameter("tel") %>
</body>
</html>