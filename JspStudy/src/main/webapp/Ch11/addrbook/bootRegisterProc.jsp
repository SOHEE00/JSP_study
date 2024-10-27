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
	<!-- 사용자로부터 입력받은 데이터를 Do에 Ado라는 객체 생성해서 저장코드 -->
	<jsp:useBean id="ado" class="addrbookDb.addrbookDo"/>
	<jsp:setProperty property="*" name="ado"/>
	
	<!--Dao를 이용하여 ado에 저장되어 있는 데이터를 디비에 저장 ... (insertAddress())  -->
	<jsp:useBean id="adao" class="addrbookDb.addrbookDao"/>
	
	<%
		//dao 이용하여 do에 저장되어 있는 데이터 디비 저장.
		adao.insertAddress(ado);
	
		response.sendRedirect("bootMain.jsp");
	%>
	
</body>
</html>