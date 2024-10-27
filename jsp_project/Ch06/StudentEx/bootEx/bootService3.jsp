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

<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sDao" class="StudentDb.StudentDao" scope="application"/>
<%
		//Dao에 접근하여, 전체 데이터를 가져오기
		ArrayList<StudentDo> v = sDao.getAllStudent ();
%>
<div class="container">
	<div class="text-center mb-5">
		<h1> Our Main Service(Printer) </h1>
		<p> 소프트웨어융합과는 국제사회에서의 경쟁력과 산업체에서 요구하는 실무능력을 갖춘 글로벌 응용 소프트웨어 프로그래머 양성을 교육목표로 하고 있습니다. </p>
	
	</div>
	
	<div class="row">
	
	<%

	
		for(int i =0; i < v.size(); i ++){
			
			//i번째 배열리스트 데이터를 가져와서 student 변수에 저장.
			StudentDo student = v.get(i);
	%>		
			 <div class="col">
		      <div class="card" style="width: 20rem; margin:auto;">
		      <!-- 카드의 사진 -->
				  <img src="./images/<%=student.getImage() %>" class="card-img-top" alt="..." 
				  style="height:5rem; width : 5rem; margin-left:10px;">
				  <!-- 카드의 내용 -->
				  <div class="card-body">
				    <h5 class="card-title">이름 : <%=student.getName() %></h5>
				    <h5 class="card-title">전화번호 : <%=student.getTel() %></h5>
				    <h5 class="card-title">이메일 : <%=student.getEmail() %></h5>
				    <h5 class="card-title">취미 : <%=student.getHobby() %></h5>
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