<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>resposeProc.jsp</h2>
	<hr>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>
	<p> id : <%=id %> </p>
	<p> password : <%=password %> </p>
	
	<%
		//response ��ü�� �̿��Ͽ� ������ �̵� �޼ҵ�
		//response.sendRedirect("responseProc2.jsp");
	%>
	<jsp:forward page="responseProc2.jsp"/>
</body>
</html>