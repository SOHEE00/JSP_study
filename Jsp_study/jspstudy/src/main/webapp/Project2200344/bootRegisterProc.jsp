<%@page import="StudentDb.StudentDo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <h2>bootRegisterProc.jsp</h2>  -->
	<!-- 
		jsp:useBean id ="aa" class="AA" scope="application"
		~~> 자바 코드로 바꾸면, AA aa = new AA ()
		useBean : class 속성의 설정값이 AA인 클래스를 이용하여 id 속성에 설정된 aa 이름의 객체 생성해주는 액션 태그
		scope : 생성된 aa객체의 생명주기를 결정
			application : application이 종료되기 전까지 생성된 aa 객체를 유지
			page : 해당 페이지내에서 생성된 aa 객체가 유지됨.
	 -->
	<jsp:useBean id="sDao" class="StudentDb.StudentDao" scope="application"></jsp:useBean>
	<%
		StudentDo sdo = new StudentDo();
		sdo.setName(request.getParameter("name"));
		sdo.setEmail(request.getParameter("email"));
		sdo.setTel(request.getParameter("tel"));
		sdo.setHobby(request.getParameter("hobby"));
		sdo.setImage(request.getParameter("image"));
		
		
		//Dao을 이용하여 입력폼을 통해서 받은 데이터를 배열리스트에 저장
		sDao.insertStudent(sdo);
		
		//데이터 저장 후에. bootMain.jsp로 이동
		response.sendRedirect("bootMain.jsp");
		
	%>
</body>
</html>