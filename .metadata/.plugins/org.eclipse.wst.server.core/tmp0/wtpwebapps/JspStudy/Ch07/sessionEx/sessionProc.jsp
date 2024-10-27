<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>sessionProc.jsp</h2>
	<hr>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		//세션을 이용하여 정보를 저장
		session.setAttribute("id",id);
		session.setAttribute("password", password);
	%>
	
	<p> id : <%=id %> </p>
	<p> password : <%=password %> </p>
	
	<%
		response.sendRedirect("sessionProc2.jsp");
	%>
</body>
</html>