<%@page import="joblistDb.joblistDao"%>
<%@page import="joblistDb.joblistDo"%>
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
	
	<div class="container">
	<div class="text-center mb-5">
		<h1> Our Job Service </h1>
		<p>국제사회에서의 경쟁력과 산업체에서 요구하는 실무능력을 갖춘 글로벌 응용 소프트웨어 프로그래머 양성을 교육목표로 하고 있습니다</p>
	
</div>
	<jsp:useBean id="jdao" class="joblistDb.joblistDao" />
	
    
      <%
	     String search_username = request.getParameter("search_username");
	     joblistDao dao = new joblistDao();
	     ArrayList<joblistDo> searchResults = dao.JoblistSelect(search_username);
		
     if (searchResults != null && !searchResults.isEmpty()) {
         for (joblistDo joblist : searchResults) {
%>
            <div class="col">
                <div class="card" style="width: 20rem; margin:auto;">
                    <!-- 카드의 사진 -->
                    <img src="./images/<%= joblist.getImage() %>" class="card-img-top" alt="..." style="height:5rem; width:5rem; margin-left:10px;">
                    <!-- 카드의 내용 -->
                    <div class="card-body">
                        <h5 class="card-title">회사이름 : <%= joblist.getUsername() %></h5>
                        <h5 class="card-title">채용기간 : <%= joblist.getDate() %></h5>
                        <h5 class="card-title">채용인원 : <%= joblist.getPeople() %></h5>
                        <h5 class="card-title">채용분야 : <%= joblist.getEmployee() %></h5>
                        <a href="#" class="btn btn-primary">수정</a>
                        <a href="#" class="btn btn-primary">삭제</a>
                    </div>
                </div>
            </div>
<%
        }
    } else {
        out.println("<p>No results found.</p>");
    }
%>
    
</body>
</html>