<%@page import="java.util.ArrayList"%>
<%@page import="registerDb.RegisterDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<h2>이벤트 등록자 정보</h2>
	<hr>
	<jsp:useBean id="rdo" class="registerDb.RegisterDo" />
	<jsp:setProperty property="*" name="rdo"/>
	
	<P>username : <jsp:getProperty property="username" name="rdo"/> </P>
	<p>email : <jsp:getProperty property="email" name="rdo"/> </p>
		
	<!-- Dao를 이용해서 Do에 저장된 데이터를 디비에 저장 -->
	<jsp:useBean id="rdao" class="registerDb.RegisterDao" />
	<%
		//dao에 있는 insertRegister()를 이용해서 디비에 저장
		rdao.insertRegister(rdo);
	%>
	
	<h2>이벤트 등록자 전체 목록</h2>
	<hr>
	<%
		//dao 이용하여 전체 데이터를 가져오기
		ArrayList<RegisterDo> aList = rdao.getAllRegister();
		
		for (int i = 0; i < aList.size(); i++) {
			//ArrayList에서 하나의 do를 가져오기
			RegisterDo rdoTemp = aList.get(i);
			out.println(i + "name ->"+rdoTemp.getUsername()+"email->"+rdoTemp.getEmail()+"<br>");
			
		}
	%>
</body>
</html>