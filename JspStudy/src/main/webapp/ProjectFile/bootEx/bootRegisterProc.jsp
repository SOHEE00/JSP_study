<%@page import="joblistDb.joblistDo"%>
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
	<!-- <h2>bootRegisterProc.jsp</h2>  -->
	<!-- 
		jsp:useBean id ="aa" class="AA" scope="application"
		~~> �ڹ� �ڵ�� �ٲٸ�, AA aa = new AA ()
		useBean : class �Ӽ��� �������� AA�� Ŭ������ �̿��Ͽ� id �Ӽ��� ������ aa �̸��� ��ü �������ִ� �׼� �±�
		scope : ������ aa��ü�� �����ֱ⸦ ����
			application : application�� ����Ǳ� ������ ������ aa ��ü�� ����
			page : �ش� ������������ ������ aa ��ü�� ������.
	 -->
	<jsp:useBean id="jDao" class="joblistDb.joblistDao" scope="application"/>
	

	<%
		joblistDo jdo = new joblistDo();
		jdo.setUsername(request.getParameter("username"));
		jdo.setDate(request.getParameter("date"));
		jdo.setPeople(request.getParameter("people"));
		jdo.setEmployee(request.getParameter("employee"));
		jdo.setImage(request.getParameter("image"));
		
		
		//Dao�� �̿��Ͽ� �Է����� ���ؼ� ���� �����͸� �迭����Ʈ�� ����
		jDao.insertJoblist(jdo);
		
		
		//������ ���� �Ŀ�. bootMain.jsp�� �̵�
		response.sendRedirect("bootMain.jsp");
		
	%>
</body>
</html>