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
	<jsp:useBean id="sDao" class="StudentDb.StudentDao" scope="application"></jsp:useBean>
	<%
		StudentDo sdo = new StudentDo();
		sdo.setName(request.getParameter("name"));
		sdo.setEmail(request.getParameter("email"));
		sdo.setTel(request.getParameter("tel"));
		sdo.setHobby(request.getParameter("hobby"));
		sdo.setImage(request.getParameter("image"));
		
		
		//Dao�� �̿��Ͽ� �Է����� ���ؼ� ���� �����͸� �迭����Ʈ�� ����
		sDao.insertStudent(sdo);
		
		//������ ���� �Ŀ�. bootMain.jsp�� �̵�
		response.sendRedirect("bootMain.jsp");
		
	%>
</body>
</html>