<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Main page(include action) </h2>
	<hr>
	
	<jsp:include page="footer.jsp">
		<jsp:param value="hong@hong.com" name="email"/>
		<jsp:param value="010-1111-1111" name="tel"/>	
	</jsp:include>
	

</body>
</html>