<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>RequestProc.jsp</h2>
	<hr>
	<table border="1" style="border-collapse:collapse;">
	<tr height="60" align="center">
	<td width="100">아이디</td>
	<td width="200"><%=request.getParameter("id") %></td>
	</tr>
	
	<tr height="60" align="center">
	<td width="100">직업</td>
	<td width="200">
		<%=request.getParameter("job") %>
	</td>
	</tr>
	
	<tr height="60" align="center">
	<td width="100">취미</td>
	<td width="200">
	<%
		String hobby[] = request.getParameterValues("hobby");
		for (int i =0; i<hobby.length; i++) {
	%>
	<%=hobby[i] %> &nbsp
	<%
	}
	%>
	</td>
	</tr>


	
	<tr height="60" align="center">
	<td colspan="2">
	<input type="submit" vlaue="확인">
	&nbsp &nbsp
	<input type="reset" value="취소">
	</tr>
	</table>
</body>
</html>