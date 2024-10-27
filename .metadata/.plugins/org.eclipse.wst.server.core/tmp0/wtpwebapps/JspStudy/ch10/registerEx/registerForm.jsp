<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>LoginForm.jsp</h2>

<div class="container" 
style="max-width:600px;
		border : 1px solid #ccc;
		border-radius : 10px;
		padding : 30px;
		margin-top : 50px;
		box-shadow : 0 10px 20px rgba(0,0,0,0.3);">
		<!-- 제목 설정 -->
		<p class="fw-bold fs-1 text-center"> 등록화면 </p>
  <form action="registerProc.jsp" method="post">
  
  <!-- userId -->
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">User ID</label>
    	<input type="text" class="form-control" id="exampleInputEmail1"
    		   name="username">
  	</div>
  	
  <!-- password -->
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">E-mail &nbsp</label>
    	<input type="text" class="form-control" id="exampleInputEmail1"
    		   name="email">
  	</div>
  	
  	
  	<button type="submit" class="btn btn-primary">Submit</button>
  	&nbsp &nbsp
  	<button type="reset" class="btn btn-danger">Reset</button>
	</form>
</div>
</body>
</html>