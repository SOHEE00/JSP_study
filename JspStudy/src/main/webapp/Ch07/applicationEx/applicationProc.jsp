<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>applicationProc.jsp</h2>
	<hr>
	<h3> username : <%= application.getAttribute("username") %></h3>
	<%	
		//application ��ü�κ��� �湮�ڼ� ���
		Integer count = (Integer)application.getAttribute("count");
		int visit_count = count.intValue()+1;
		application.setAttribute("count", visit_count);
	%>
	<h3>�湮�ڼ� : <%= visit_count %></h3>
</body>
</html>