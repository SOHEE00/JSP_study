<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Adder page</h2>
	<hr>
	<%
	//�ڹ��ڵ尡 ��ġ
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int num1Int = Integer.parseInt(num1);
	int num2Int = Integer.parseInt(num2);
	//num2 �Ȱ��� ����%>
	
	<p> ������ <%= num1Int %> + <%=num2Int %> = <%= num1Int + num2Int %> </p>
	
</body>
</html>