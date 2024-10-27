<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>	
	<h2>requestproc.jsp</h2>
	<hr>
	<%
		//한글깨짐 방지
		request.setCharacterEncoding("utf-8");
	%>
<%-- 	<p>id : <%=request.getParameter("id") %> </p>
	<p>job : <%=request.getParameter("job") %> </p>
	<p>hobby : 
		<%
			String hobby[] = request.getParameterValues("hobby");
			for(int i = 0; i<hobby.length; i++) {	
		%>
			<%=hobby[i] %> &nbsp
		<%
		}
		%>
	</p>
	<hr> --%>
	
	<!-- 테이블 형식으로 데이터 출력!! -->
	<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">아이디</td>
		<td width="200"> <!-- <input type="text" name="id"> -->
							<%=request.getParameter("id") %> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">직업</td>
			<td width="200">
				<!-- <select name="job">
					<option selected>SW Engineer </option>
					<option>Web-Front Engineer</option>
					<option>Web-BackEnd Engineer</option>
				</select> -->
				<%=request.getParameter("job") %>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">취미</td>
			<td width="200">
				<!-- <input type="checkbox" name="hobby" value="swimming">수영
				<input type="checkbox" name="hobby" value="takgu">탁구
				<input type="checkbox" name="hobby" value="baegu">배구 -->
				<%
					String hobby[] = request.getParameterValues("hobby");
					for(int i = 0; i<hobby.length; i++) {	
				%>
				<%=hobby[i] %> &nbsp
				<%
				}
				%>
		</tr>
		
		<!-- <tr height="60" align="center">
			<td colspan="2">
			<input type ="submit" value="확인">
			&nbsp &nbsp
			<input type ="reset" value="취소"> -->
		</table>
	
</body>
</html>