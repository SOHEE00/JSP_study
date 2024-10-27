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
		//application 객체로부터 방문자수 계산
		Integer count = (Integer)application.getAttribute("count");
		int visit_count = count.intValue()+1;
		application.setAttribute("count", visit_count);
	%>
	<h3>방문자수 : <%= visit_count %></h3>
</body>
</html>