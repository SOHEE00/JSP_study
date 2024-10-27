<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 주석 연습 </h2>
	<!--   주석을 붙일때에는 , 블록지정후에, ctrl + shift + /  -->
	<!-- <p> 여기를 주석으로 설정해 주세요. </p> -->
	
	<!-- jsp 전용태그의 주석   -->
	<%-- <jsp:useBean id="aaa"> aaa </jsp:useBean> --%>
	
	<!-- 자바 코드의 주석 -->
	<%
		//여기에 자바코드가 존재함
		/*
		자바 코드 주석
		*/
		
		int a = 0;
		int b = 5;
		int hap = a + b;
	%>
	
	

</body>
</html>