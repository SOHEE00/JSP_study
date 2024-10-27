<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<h2>bootLoginProc.jsp</h2>
	<hr>
	<%
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		//userid 값을 session에 저장
		session.setAttribute("id",userid);
		
		//main.jsp를 호출하여 bootNav.jsp에 반영
		response.sendRedirect("bootMain.jsp");
	%>
	<p> userid : <%=userid %> </p>
	<p>	userpw : <%=userpw %>
	
	
</body>
</html>