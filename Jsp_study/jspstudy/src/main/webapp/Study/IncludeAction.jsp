<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�Ķ���� ��� ������</h2>
	<jsp:include page="FooterAction.jsp">
		<jsp:param value="test@test" name="email" />
		<jsp:param value="010-1111-1111" name="tel"/>
	</jsp:include>
</body>
</html>