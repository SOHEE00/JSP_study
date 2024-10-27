<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- 부트스트랩 css 라이브러리 추가 -->
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container" 
style="max-width:600px;
		border : 1px solid #ccc;
		border-radius : 10px;
		padding : 30px;
		margin-top : 50px;
		box-shadow : 0 10px 20px rgba(0,0,0,0.3);">
		<!-- 제목 설정 -->
		<p class="fw-bold fs-1 text-center"> 주소록 등록 </p>
  <form action="bootProc.jsp" method="post">
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">User Name</label>
    	<input type="text" class="form-control" id="exampleInputEmail1"
    		   name="username">
  	</div>
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Mobile phone</label>
    	<input type="text" class="form-control" id="exampleInputEmail1"
    		   name="phone">
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
  	
  	<!-- checkbox menu -->
  	<div class="mb-3">
  		<label for = "exampleInputEmaill" class="from-label">관심 분야</label>
    	<div class="form-check">
	  <input class="form-check-input" type="checkbox" value="SW Engineer" id="flexCheckDefault"
	  	name="interests">
	  <label class="form-check-label" for="flexCheckDefault">
	   SW Engineer
	  </label>
	</div>
  	</div>
  	
  	  	<div class="mb-3">
    	<div class="form-check">
	  <input class="form-check-input" type="checkbox" value="Web-Front Enginner" id="flexCheckDefault"
	  name="interests">
	  <label class="form-check-label" for="flexCheckDefault">
	    Web-Front Enginner
	  </label>
	</div>
  	</div>
  	
  	  	<div class="mb-3">
    	<div class="form-check">
	  <input class="form-check-input" type="checkbox" value="Web-Backend Engineer" id="flexCheckDefault"
	  name="interests">
	  <label class="form-check-label" for="flexCheckDefault">
	    Web-Backend Engineer
	  </label>
	</div>
  	</div>

  	<button type="submit" class="btn btn-primary">Submit</button>
  	<button type="reset" class="btn btn-danger">Reset</button>
	</form>
</div>
</body>
</html>