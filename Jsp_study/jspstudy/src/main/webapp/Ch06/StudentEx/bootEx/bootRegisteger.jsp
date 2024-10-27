<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!--  <title>Insert title here</title>-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<%@ include file="bootNav.jsp" %>
		
		<div class="container" 
		style="max-width:600px;
		border : 1px solid #ccc;
		border-radius : 10px;
		padding : 30px;
		margin-top : 50px;
		box-shadow : 0 10px 20px rgba(0,0,0,0.3);">
		  <!-- 제목 설정 -->
		  <p class="fw-bold fs-1 text-center"> Student Registration </p>
		  <hr>
		  <form action="bootRegisterProc.jsp" method="post">
		  	<div class="mb-3">
		    	<label for="exampleInputName" class="form-label">User Name</label>
		    	<input type="text" class="form-control" id="exampleInputName"
		    		   name="name">
		  	</div>
		  	<div class="mb-3">
		    	<label for="exampleInputTel" class="form-label">Mobile phone</label>
		    	<input type="text" class="form-control" id="exampleInputTel"
		    		   name="tel">
		  	</div>
		  	<div class="mb-3">
		    	<label for="exampleInputEmail1" class="form-label">E-mail</label>
		    	<input type="text" class="form-control" id="exampleInputEmail1"
		    		   name="email">
		  	</div>
		  	
		  	<!-- select menu -->
		  	<div class="mb-3">
		    	<label for="exampleInputEmail1" class="form-label">Hobby</label>
		    	<select class="form-select" aria-label="Default select example" name="hobby">
				  <option value="tennis">테니스</option>
				  <option value="basketball">농구</option>
				  <option value="swimming">수영</option>
				</select>
		  	</div>
		  	
		  	<div class="mb-3">
		    	<label for="exampleInputEmail1" class="form-label">Image</label>
		    	<input type="text" class="form-control" id="exampleInputEmail1"
		    		   name="image">
		  	</div>
		  	
		  	<button type="submit" class="btn btn-primary">저장</button>
		  	<button type="reset" class="btn btn-danger">취소</button>
			</form>
		</div>
		
		
				  
	</div>
	
	
</body>
</html>