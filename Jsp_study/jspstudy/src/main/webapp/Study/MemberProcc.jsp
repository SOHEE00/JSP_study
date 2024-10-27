<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>MemberProcc.jsp</h2>
		<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">이름</td>
		<td width="200"><%=request.getParameter("name") %></td>
		<tr>
		
		<tr height="60" align="center">
		<td width="100">학번</td>
		<td width="200"><%=request.getParameter("schoolnumber") %></td>
		<tr>
		
		<tr height="60" align="center">
		<td width="100">학과</td>
		<td width="200">
		<%=request.getParameter("major") %>
		</td>
		</tr>
		
		<tr height="60" align="center">
		<td width="100">좋아하는 캐릭터</td>
		<td width="200">
		<% 
			String chara[] = request.getParameterValues("chara");
			for (int i = 0; i<chara.length; i++){
		%>
		<%=chara[i] %> 
		<%
		}
		%>
		</td>
		</tr>
		
		<tr height="60" align="center">
		<td colspan="2">
		<input type="submit" value="확인">
		&nbsp &nbsp
		<input type="reset" value="취소">
		</td>
		</tr>

		</table>
</body>
</html>