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
		//�ѱ۱��� ����
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
	
	<!-- ���̺� �������� ������ ���!! -->
	<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">���̵�</td>
		<td width="200"> <!-- <input type="text" name="id"> -->
							<%=request.getParameter("id") %> </td>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">����</td>
			<td width="200">
				<!-- <select name="job">
					<option selected>SW Engineer </option>
					<option>Web-Front Engineer</option>
					<option>Web-BackEnd Engineer</option>
				</select> -->
				<%=request.getParameter("job") %>
		</tr>
		
		<tr height="60" align ="center">
			<td width="100">���</td>
			<td width="200">
				<!-- <input type="checkbox" name="hobby" value="swimming">����
				<input type="checkbox" name="hobby" value="takgu">Ź��
				<input type="checkbox" name="hobby" value="baegu">�豸 -->
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
			<input type ="submit" value="Ȯ��">
			&nbsp &nbsp
			<input type ="reset" value="���"> -->
		</table>
	
</body>
</html>