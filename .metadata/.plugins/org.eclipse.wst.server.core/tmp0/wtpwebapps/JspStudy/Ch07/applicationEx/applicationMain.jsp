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
	<h3>���� ���� : <%=application.getServerInfo() %></h3>
	<!-- application ��ü�� ���� ���� -->
	<%
		application.setAttribute("username","ȫ�浿");
		application.setAttribute("count", 1);
	%>
	<a href="applicationProc.jsp"> applicationProc.jsp �̵�</a>
</body>
</html>