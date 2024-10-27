<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>loginProc.jsp</h2>
	<hr>
	<!--  빈즈 클래스를 이용하여 login 이름의 객체 생성 -->
	<jsp:useBean id="login" class="loginDb.LoginBean" />
	<!-- loginForm.jsp로부터 전달되는 id,password 값을 login빈즈 객체에 저장 -->
	
	<!--<jsp:setProperty property="id" name="login/">
	<jsp:setProperty property="password" name="login/"> -->
	
	<!-- 한번에 받아오는 * -->
	<jsp:setProperty property="*" name="login" />
	
	<!-- 빈즈클래스에 저장된 id, password값을 출력 -->
	<p> 아이디 : <jsp:getProperty property="id" name="login"/>
	<p> 비밀번호 : <jsp:getProperty property="password" name="login"/>
	
	<%
		if(login.checkUser()) {
			out.println("로그인 성공");
		}
		else {
			out.println("로그인 실패");
		}
	%>
</body>
</html>