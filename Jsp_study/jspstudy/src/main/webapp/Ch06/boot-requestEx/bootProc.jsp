<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<h2>bootProc.jsp</h2>
	<hr>
	<% //한글깨짐방지
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String hobby = request.getParameter("hobby");
		String interests[] = request.getParameterValues("interests");
		%>
		
	 	
<div class="container" 
		style="max-width:600px;
		border : 1px solid #ccc;
		border-radius : 10px;
		padding : 30px;
		margin-top : 50px;
		box-shadow : 0 10px 20px rgba(0,0,0,0.3);">
		<!-- 제목 설정 -->
		<p class="fw-bold fs-1 text-center"> 주소록 출력 </p>
  
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">UserName</label>
    	<p><%=username %></p>
  	</div>
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Mobile phone</label>
    	<p><%=phone %> </p>
  	</div>
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">E-mail</label>
    	<p><%=email %> </p>
  	</div>
  	
  	<!-- select menu -->
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Hobby</label>
    	<p><%=hobby %> </p>
  	</div>
  	
  	<!-- checkbox menu -->
  	<div class="mb-3">
  		<label for = "exampleInputEmaill" class="from-label">관심 분야</label>
    	<p>
		<%
			for(int i =0; i <interests.length; i++) {
	 	%>
	 		<%= interests[i] %> &nbsp
	 	<%
	 		}
	 	%>

  	</div>
</div>
</body>
</html>