<%@page import="StudentDb.StudentDo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<h2>bootRegisterProc.jsp</h2>
	<hr>
	<!-- ����ڷκ��� �Է¹��� �����͸� Do�� Ado��� ��ü �����ؼ� �����ڵ� -->
	<jsp:useBean id="ado" class="addrbookDb.addrbookDo"/>
	<jsp:setProperty property="*" name="ado"/>
	
	<!--Dao�� �̿��Ͽ� ado�� ����Ǿ� �ִ� �����͸� ��� ���� ... (insertAddress())  -->
	<jsp:useBean id="adao" class="addrbookDb.addrbookDao"/>
	
	<%
		//dao �̿��Ͽ� do�� ����Ǿ� �ִ� ������ ��� ����.
		adao.insertAddress(ado);
	
		response.sendRedirect("bootMain.jsp");
	%>
	
</body>
</html>