<%@page import="addrbookDb.addrbookDo"%>
<%@page import="StudentDb.StudentDo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>

<body>

<!-- Dao의 getAllAddress() 이용하여 디비로부터 전체 데이터 읽어오기 -->
<jsp:useBean id="adao" class="addrbookDb.addrbookDao"/>
<%
	//dao이용하여 전체 데이터 읽어서 aList저장
	ArrayList<addrbookDo> aList = adao.getAllAddress();
%>
<div class="container">
	<div class="text-center mb-5 mt-5">
		<h1>AddressBook List</h1>
	</div>
</div>

<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Number</th>
      <th scope="col">Username</th>
      <th scope="col">Mobile</th>
      <th scope="col">Email</th>
      <th scope="col">Hobby</th>
      <th scope="col">Image</th>
      <th scope="col">Modify/Delete</th>
    </tr>
  </thead>
  
  <tbody>
  
  <%
  	for (int i=0; i < aList.size(); i++) {
  		addrbookDo ado = aList.get(i);
  %>
  <tr>
      <th scope="row"><%=ado.getNum() %></th>
      <td><%=ado.getName() %></td>
      <td><%=ado.getTel() %></td>
      <td><%=ado.getEmail() %></td>
      <td><%=ado.getHobby() %></td>
      <td>
		  <!-- 카드의 사진 -->
		  <img src="./images/<%=ado.getImage() %>" class="card-img-top" alt="..." 
		  style="height:5rem; width : 5rem; margin-left:10px;">
	</td>
	<td>
		<button type="button"
				class="btn btn-primary"
				onclick="location.href='addressModify.jsp?num=<%=ado.getNum() %>'">
		Modify
		</button>
		<button type="button"
				class="btn btn-danger"
				onclick="location.href='addressDelete.jsp?num=<%=ado.getNum() %>'">
		Delete
		</button>
	</td>
    </tr>
  <%
  	}
  %>
    
  </tbody>
</table>

</body>
</html>