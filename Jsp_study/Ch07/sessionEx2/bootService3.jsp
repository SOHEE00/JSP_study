<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>

<div class="container">
	<div class="text-center mb-5">
		<h1> Our Main Service(Printer) </h1>
		<p> 소프트웨어융합과는 국제사회에서의 경쟁력과 산업체에서 요구하는 실무능력을 갖춘 글로벌 응용 소프트웨어 프로그래머 양성을 교육목표로 하고 있습니다. </p>
	
	</div>
	
	<div class="row">
	
	<%
		String imgName[] = {"./images/office1.jpg",
							"./images/office2.jpg",
							"./images/office3.jpg"};
		for(int i =0; i < 3; i ++){
	%>		
			 <div class="col">
		      <div class="card" style="width: 18rem; margin:auto;">
				  <img src=<%= imgName[i] %> class="card-img-top" alt="..." style="height:10rem;">
				  <div class="card-body">
				    <h5 class="card-title">Card title</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">Go somewhere</a>
				  </div>
				</div>
		   	 </div>
			
	<%		
		}	
	%>
    
    
  </div>
</div>


</body>
</html>