<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>loginProc.jsp</h2>
	<hr>
	<!--  ���� Ŭ������ �̿��Ͽ� login �̸��� ��ü ���� -->
	<jsp:useBean id="login" class="loginDb.LoginBean" />
	<!-- loginForm.jsp�κ��� ���޵Ǵ� id,password ���� login���� ��ü�� ���� -->
	
	<!--<jsp:setProperty property="id" name="login/">
	<jsp:setProperty property="password" name="login/"> -->
	
	<!-- �ѹ��� �޾ƿ��� * -->
	<jsp:setProperty property="*" name="login" />
	
	<!-- ����Ŭ������ ����� id, password���� ��� -->
	<p> ���̵� : <jsp:getProperty property="id" name="login"/>
	<p> ��й�ȣ : <jsp:getProperty property="password" name="login"/>
	
	<%
		if(login.checkUser()) {
			out.println("�α��� ����");
		}
		else {
			out.println("�α��� ����");
		}
	%>
</body>
</html>