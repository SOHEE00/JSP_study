<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		//���� Ŭ���̾�Ʈ�� ��Ű ������ �ִٸ� �о���� �ڵ�
		Cookie[] cookies = request.getCookies();
		//id�������� �� ����
		String id ="";
		if (cookies != null) { //��Ű ������ �ϳ��� �ִٸ�,
			//��Ű�� id�� �̸����� ������ ����Ǿ� �ִٸ�, 
			//�� ���� id ������ ������
			for (int i = 0; i <cookies.length; i++) {
				if (cookies[i].getName().equals("id")) {
					id = cookies[i].getValue();
					break;
				}
			}
		}
	 %>
	<h2> �α��� </h2>
	<hr>
	<form action="cookieProc.jsp" method="get">
	<table border="1" style="border-collapse:collapse;">
		<tr height="60" align="center">
		<td width="100">���̵�</td>
		<td width="200"> <input type="text" name="id" value=<%=id%>> </td>
		</tr>
	
		<tr height="60" align="center">
		<td width="100">�н�����</td>
		<td width="200"> <input type="text" name="password">
		</tr>
	
		<tr height="60" align="center">
		<td colspan="2" align="center">
			<input type="checkbox" name="cookieUse" value="1"> ���̵�����
		</td>
		</tr>

		<tr height="60" align="center">
			<td colspan="2">
			<input type ="submit" value="Ȯ��">
			&nbsp &nbsp
			<input type ="reset" value="���">
		</table>
		</form>
</body>
</html>