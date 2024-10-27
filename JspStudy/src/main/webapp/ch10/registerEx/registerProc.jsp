<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
	<h2>registerProc.jsp</h2>
	<hr>
	<p>username : <%= request.getParameter("username") %> </p>
	<p>email : <%= request.getParameter("email") %> </p>
	
<%
	//jdbc 이용 디비 연동 코드
	//디비 연동을 위한 변수 설정
	String id = "root";
	String password = "1111";
	String url = "jdbc:mysql://localhost:3306/jspdb_j?characterEncoding=utf-8";
	//jdbc 이용을 위한 기본 객체 설정
	Connection conn = null; //디비 연결을 위한 객체
	PreparedStatement pstmt = null; // sql문 작성 및 실행을 위한 객체
	ResultSet rs = null;	//sql 실행 후에 결과 처리를 위한 객체
	
	//jdbc 이용 insert문 처리 //연동 시작
	try {
		//1. mySql 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver");
		
		//2. 디비 연결
		conn = DriverManager.getConnection(url,id,password);
		
		out.println("디비 연결 완료!");
		
		//3. sql문 완성
		String sql = "insert into register values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("username"));
		pstmt.setString(2,request.getParameter("email"));
		
		//4. sql문 완성
		pstmt.executeUpdate();
		
		out.println("(insert 문) 디비처리 완료 !!");
		
		//5. 디비 연결 종료
		conn.close();
	}
	catch(SQLException e){
		out.println("에러메세지"+e.getMessage());
	}
	
	//jdbc 이용 select문 처리
	try {
		//2. 디비 연결
		conn = DriverManager.getConnection(url,id,password);
				
		out.println("디비 연결 완료!");
		
		//3. sql문 완성
		String sql = "select * from register";
		pstmt = conn.prepareStatement(sql);
		
		//4. sql문 실행
		rs = pstmt.executeQuery();
		
		//5. sql문 처리결과
		out.println("<h3>저장된 이벤트 등록자 목록</h3> <hr>");
		int i = 1;
		while(rs.next()) {
			out.println(i + " -> name : "+rs.getString(1)+
					", email :" + rs.getString(2) + "<br>");
			i++;
		}
		out.println("(select)디비 처리 종료 !!");
	}
	catch(SQLException e) {
		out.println("(select)에러메세지"+e.getMessage());
	}
%>
</body>
</html>