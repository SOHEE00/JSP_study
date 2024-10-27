<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<!-- <h2>LoginForm.jsp</h2> -->
	<div class="container">
		<%@ include file="loginProc.jsp" %>	
			  
		
	</div>
<div class="container" 
style="max-width:600px;
		border : 1px solid #ccc;
		border-radius : 10px;
		padding : 30px;
		margin-top : 50px;
		box-shadow : 0 10px 20px rgba(0,0,0,0.3);">
		<!-- 제목 설정 -->
		<p class="fw-bold fs-1 text-center"> Login </p>
  <form action="registerProc.jsp" method="post">
  
  <!-- userId -->
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">User ID</label>
    	<input type="text" class="form-control" id="exampleInputEmail1"
    		   name="userid">
  	</div>
  	
  <!-- password -->
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Password</label>
    	<input type="password" class="form-control" id="exampleInputEmail1"
    		   name="userpw">
  	</div>
  	
  	
  	<button type="submit" class="btn btn-primary">Submit</button>
  	&nbsp &nbsp
  	<button type="reset" class="btn btn-danger">Reset</button>
	</form>
</div>
</body>
</html>