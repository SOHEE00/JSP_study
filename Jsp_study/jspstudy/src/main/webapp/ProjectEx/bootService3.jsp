<%@page import="JobDb.JobDo"%>
<%@page import="java.util.ArrayList"%>
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
<jsp:useBean id="sDao" class="JobDb.JobDao" scope="application"/>
<%
		//Dao에 접근하여, 전체 데이터를 가져오기
		ArrayList<JobDo> v = sDao.getAllJob ();
%>
<div class="container">
	<div class="text-center mb-5">
		<h1> Our Job Service </h1>
	</div>
	
	<div class="row">
	
	<%

	
		for(int i =0; i < v.size(); i ++){
			
			//i번째 배열리스트 데이터를 가져와서 student 변수에 저장.
			JobDo job = v.get(i);
	%>		
			 <div class="col">
		      <div class="card" style="width: 15rem; margin:auto; background-color: #f5f4ef;">
		      <!-- 카드의 사진 -->
				  <img src="./images/<%=job.getImage() %>" class="card-img-top" alt="..." 
				  style="height:5rem; width : 5rem; margin-left:10px;">
				  <!-- 카드의 내용 -->
				  <div class="card-body">
				    <h5 class="card-title">회사이름 : <%=job.getName() %></h5>
				    <h5 class="card-title">채용기간 : <%=job.getDay() %></h5>
				    <h5 class="card-title">채용인원 : <%=job.getPer() %></h5>
				    <h5 class="card-title">채용분야 : <%=job.getJob() %></h5>
				    <a href="#" class="btn btn-primary">Show Details</a>
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