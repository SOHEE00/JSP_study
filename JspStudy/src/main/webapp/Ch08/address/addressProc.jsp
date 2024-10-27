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
<jsp:useBean id="Address" class="addressDb.addressBean" />

<jsp:setProperty property="*" name="Address" />





<div class="container" 
style="max-width:600px;
		border : 1px solid #ccc;
		border-radius : 10px;
		padding : 30px;
		margin-top : 50px;
		box-shadow : 0 10px 20px rgba(0,0,0,0.3);">
		<!-- 제목 설정 -->
		<p class="fw-bold fs-1 text-center"> Address </p>
  
  <form action="" method="post">
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Name</label>
    	<jsp:getProperty property="name" name="Address"/>
  	</div>
  	
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">E-mail</label>
    	<jsp:getProperty property="email" name="Address"/>
  	</div>
  	
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Hobby</label>
    	<jsp:getProperty property="hobby" name="Address"/>
  	</div>
  	
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Job</label>
    	<jsp:getProperty property="job" name="Address"/>
  	</div>
  	
  	
  	<button type="submit" class="btn btn-primary">Submit</button>
  	&nbsp &nbsp
  	<button type="reset" class="btn btn-danger">Reset</button>

</div>
</form>
</body>
</html>