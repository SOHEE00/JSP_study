<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>	
	<h2>��ũ��Ʈ�� ���� (scriptLet)</h2>
	<hr>
	<h3>1-10���� ���</h3>
	<%	
		for(int i =1; i <=10; i++) {
			out.println(i + "<br>");
		}
	%>
	<hr>
	<%
		//ǥ������ �̿��Ͽ� 1-10���� ���
		for(int i =1; i <=10; i++) {
	%>
			<%=i %> <br>
	<%
		}
	%>
	<h2>������ ���</h2>
	<%
		for (int i = 2; i<=9; i++) {
			for(int j = 1; j<=9; j++) {
			%>
			<%=i %>*<%=j %>=<%=i*j %> <br>
	<%
	}
	%>
		<br>
		<% 
		}
	%>
</body>
</html>