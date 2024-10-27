<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addressDelete.jsp</title>
</head>
<body>
	<h2>addressDelete.jsp</h2>
	<p> delete number : <%=request.getParameter("num") %> </p>
	
	<jsp:useBean id="adao" class="addrbookDb.addrbookDao" />
	<%
		//num을 이용해서 해당 디비 데이터 삭제
		int num = Integer.parseInt(request.getParameter("num"));
		adao.addressDelete(num);
		
		//삭제 후 메인페이지 이동
		response.sendRedirect("bootMain.jsp");
	%>
</body>
</html>