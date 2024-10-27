<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>MemberProc.jsp</h2>
	<form action="MemberProc.jsp" method="get">
	<table border = "1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">이름</td>
		<td width="200"> <%=request.getParameter("name") %> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">학번</td>
			<td width="200">
				<%=request.getParameter("school") %> </td>
		</tr>
		<tr height="60" align ="center">
			<td width="100">전화번호</td>
			<td width="200">
				<%=request.getParameter("number") %> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">좋아하는 캐릭터</td>
			<td width="200">
				<%
					String chara[] = request.getParameterValues("chara");
					for(int i = 0; i<chara.length; i++) {	
				%>
				<%=chara[i] %> &nbsp
				<%
				}
				%>
			</td>
		</tr>
		</table>
		</form>
</body>
</html>