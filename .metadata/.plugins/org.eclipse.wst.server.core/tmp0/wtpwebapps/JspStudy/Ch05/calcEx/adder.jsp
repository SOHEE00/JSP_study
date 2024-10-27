<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Adder Page </h2>
	<hr>	
	<%
		//자바코드 위치 
		String num1 = request.getParameter("num1");
		int num1Int = Integer.parseInt(num1);
		
		//num2똑같이 수행
		
	%>
	
	<%-- <p> 연산결과 : <%= num1Int %> + <%= num2Int %> = <%= num1Int + num2Int %> </p> --%>

</body>
</html>