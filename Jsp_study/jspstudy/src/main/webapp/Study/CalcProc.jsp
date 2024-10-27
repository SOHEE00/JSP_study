<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>계산 페이지</h2>
	<%
		String num1 = request.getParameter("num1");
		int num1int = Integer.parseInt(num1);
		String num2 = request.getParameter("num2");
		int num2int = Integer.parseInt(num2);
		String op = request.getParameter("op");
		int result = 0;
		
		if(op.equals("+"))
			result = num1int + num2int;
		else if (op.equals("-"))
			result = num1int - num2int;
		else if (op.equals("*"))
			result = num1int * num2int;
		else if (op.equals("/"))
			if(num2int != 0 ) 
				result = num1int / num2int;
			else 
				result = 0;	
	%>
	<%=num1 %><%=op%><%=num2 %>=<%=result %>
	<input type="button" value="다시 계산하기" onclick="location.href='Calcmain.jsp'">
</html>