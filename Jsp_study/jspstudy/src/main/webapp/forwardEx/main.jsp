<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Main page(include action)</h2>
	<hr>
	<jsp:forward page="footer.jsp">
		<jsp:param value="hong@hong.com" name="email"/>
		<jsp:param value="010-1111-1111" name="tel"/>
	</jsp:forward>
</body>
</html>