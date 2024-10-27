<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>cookieProc.jsp</h2>
	<hr>
	<%
		//cookieMain.jsp에서 전송되는 데이터를 가져오는 코드
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String cookieUse = request.getParameter("cookieUse");
		
		//쿠키를 생성하여 클라이언트에 전송
		if (cookieUse != null) {
			//쿠키 생성 ("id",id)
			Cookie cookie = new Cookie("id",id);
			//쿠키 유효기간 설정
			cookie.setMaxAge(60*3); //3분
			//클라이언트로 전송
			response.addCookie(cookie);
			
			//확인 메세지
			out.println("쿠키정보 생성 완료");
		}
	%>
	<p> id : <%=id %> </p>
	<p> password : <%=password %> </p>
	<p> cookieUse : <%=cookieUse %> </p>
</body>
</html>