<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>footer page</h2>
	<hr>
	<%
	 	//�ڹ��ڵ尡 ����(��ũ��Ʈ��(scriptlet)
	 	int a =0;
	 	int b =5;
	 %>
	 <%="���⿡ �ڵ尡 ��ġ�ϸ� ����մϴ� (=�� �ٿ��� ������)" %>
	 
	<p>email : <%= request.getParameter("email") %> </p>
	<p>tel :   <%= request.getParameter("tel") %> </p>
</body>
</html>