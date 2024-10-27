<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		  <p class="fw-bold fs-1 text-center"> 채용정보 등록 </p>
		  <hr>
		  <form action="bootRegisterProc.jsp" method="post">
		  	<div class="mb-3">
		    	<label for="exampleInputName" class="form-label">회사이름</label>
		    	<input type="text" class="form-control" id="exampleInputName"
		    		   name="name">
		  	</div>
		  	<div class="mb-3">
		    	<label for="exampleInputTel" class="form-label">채용기간</label>
		    	<input type="text" class="form-control" id="exampleInputTel"
		    		   name="tel">
		  	</div>
		  	<div class="mb-3">
		    	<label for="exampleInputEmail1" class="form-label">채용인원</label>
		    	<input type="text" class="form-control" id="exampleInputEmail1"
		    		   name="email">
		  	</div>
		  	
		  	<div class="mb-3">
		    	<label for="exampleInputEmail1" class="form-label">채용분야</label>
		    	<input type="text" class="form-control" id="exampleInputEmail1"
		    		   name="hobby">
		  	</div>
		  	
		  	
		  	<div class="mb-3">
		    	<label for="exampleInputEmail1" class="form-label">Image file</label>
		    	<input type="text" class="form-control" id="exampleInputEmail1"
		    		   name="image">
		  	</div>
		  	
		  	<button type="submit" class="btn btn-primary">등록</button>
		  	<button type="reset" class="btn btn-danger">취소</button>
			</form>
		</div>
		
		
				  
	</div>
	
	
</body>
</html>