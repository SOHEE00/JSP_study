<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> out ��ü ���� </h2>
	<%
		String name ="ȫ�浿";
		out.println("<p> �̸���" + name + "�Դϴ� </p>");
		out.write("<p> �̸���" + name + "�Դϴ� </p>");
	%>
	<p> �̸��� <%= name %> �Դϴ�. </p>
</body>
</html>