<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>applicationMain.jsp</h2>
	<hr>
	<h3>서버 정보 : <%=application.getServerInfo() %></h3>
	<!-- application 객체에 정보 저장 -->
	<%
		application.setAttribute("username","홍길동");
		application.setAttribute("count", 1);
	%>
	<a href="applicationProc.jsp"> applicationProc.jsp 이동</a>
</body>
</html>