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
		//cookieMain.jsp���� ���۵Ǵ� �����͸� �������� �ڵ�
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String cookieUse = request.getParameter("cookieUse");
		
		//��Ű�� �����Ͽ� Ŭ���̾�Ʈ�� ����
		if (cookieUse != null) {
			//��Ű ���� ("id",id)
			Cookie cookie = new Cookie("id",id);
			//��Ű ��ȿ�Ⱓ ����
			cookie.setMaxAge(60*3); //3��
			//Ŭ���̾�Ʈ�� ����
			response.addCookie(cookie);
			
			//Ȯ�� �޼���
			out.println("��Ű���� ���� �Ϸ�");
		}
	%>
	<p> id : <%=id %> </p>
	<p> password : <%=password %> </p>
	<p> cookieUse : <%=cookieUse %> </p>
</body>
</html>