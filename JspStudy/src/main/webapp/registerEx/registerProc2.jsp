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
	<h2>�̺�Ʈ ����� ����</h2>
	<hr>
	<jsp:useBean id="rdo" class="registerDb.RegisterDo" />
	<jsp:setProperty property="*" name="rdo"/>
	
	<P>username : <jsp:getProperty property="username" name="rdo"/> </P>
	<p>email : <jsp:getProperty property="email" name="rdo"/> </p>
		
	<!-- Dao�� �̿��ؼ� Do�� ����� �����͸� ��� ���� -->
	<jsp:useBean id="rdao" class="registerDb.RegisterDao" />
	<%
		//dao�� �ִ� insertRegister()�� �̿��ؼ� ��� ����
		rdao.insertRegister(rdo);
	%>
	
	<h2>�̺�Ʈ ����� ��ü ���</h2>
	<hr>
	<%
		//dao �̿��Ͽ� ��ü �����͸� ��������
		ArrayList<RegisterDo> aList = rdao.getAllRegister();
		
		for (int i = 0; i < aList.size(); i++) {
			//ArrayList���� �ϳ��� do�� ��������
			RegisterDo rdoTemp = aList.get(i);
			out.println(i + "name ->"+rdoTemp.getUsername()+"email->"+rdoTemp.getEmail()+"<br>");
			
		}
	%>
</body>
</html>