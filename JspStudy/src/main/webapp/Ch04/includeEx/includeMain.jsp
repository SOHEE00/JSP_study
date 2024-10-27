<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> include Main page </h2>
	<hr>
	<!-- 주석 : 블록지정 - ctrl + shift + /  -->
	<!-- 
		<h2> [게임] [쇼핑] [뉴스] </h2> 
	-->
	<%@ include file="includeTop.jsp" %>
	<hr>
	
	<!-- 
		<h2> 최신 뉴스 </h2>
		<p> 아이폰 15, 갤럭시 울트라 24 </p> 
	-->
	<%@ include file="includeCenter.jsp" %>
	<hr>
	 
	<!-- 
		<h2> 싸이트 정보 </h2>
		<p> 정보문화관 3층 소프트웨어융합과 </p> 
	-->
	<%@ include file="includeBottom.jsp" %>
	

</body>
</html>