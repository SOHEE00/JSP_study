<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>calcProc.jsp(��� ��� ������)</h2>
	<hr>
	<%
		String num1 = request.getParameter("num1");
		int num1int = Integer.parseInt(num1);
		String num2 = request.getParameter("num2");
		int num2int = Integer.parseInt(num2);
		String operator = request.getParameter("operator");
		int result = 0;
		
		if(operator.equals("+"))
			result = num1int + num2int;
		else if(operator.equals("-"))
			result = num1int - num2int;
		else if(operator.equals("*"))
			result = num1int * num2int;
		else if(operator.equals("/")) {
			if (num2int !=0) 
				result = num1int / num2int;
			else 
				result =0;
	   }
	%>
	
	<%=num1 %><%=operator %><%=num2 %>=<%= result %>
	<input type="button" value="�ٽ� ����ϱ�"
		onclick="location.href='calcMain.jsp'">
</body>
</html>