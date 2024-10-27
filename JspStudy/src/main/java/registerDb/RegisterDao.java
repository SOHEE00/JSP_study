package registerDb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RegisterDao {
	//jdbc 이용 디비 연동 코드
	//디비 연동을 위한 변수 설정(전역변수)
	String id ="root";
	String password ="1111";
	String url = "jdbc:mysql://localhost:3306/jspdb_j?characterEncoding=utf-8";
	//jdbc 이용을 위한 기본 객체 설정 (전역변수)
	Connection conn=null; //디비 연결을 위한 객체
	PreparedStatement pstmt = null; //sql문 작성 및 실해을 위한 객체
	ResultSet rs = null; //sql실행후에 결과 처리를 위한 객체
	
	public void connect() {
		try {
			//1. mySql 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");
			
			//2. 디비 연결
			conn = DriverManager.getConnection(url,id, password);			
			System.out.println("디비 연결 완료 !! ");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void disConnect() {
		// conn close!!		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}		
		// pstmt close!!		
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}		
		// rs close!!		
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	//데이터 디비에 저장하는 메소드 
	public void insertRegister(RegisterDo rdo) {
		//디비 연결
		connect();
		
		//sql문 이용 디비 처리...
		try {
			String sql = "insert into register values(?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  rdo.getUsername()); //첫번째 값
			pstmt.setString(2, rdo.getEmail());	//두번째 값
			
			//sql실행 (insert)
			pstmt.executeUpdate();
			
			System.out.println("insertRegister()처리완료");
		}
		catch(SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		//디비연결 해제
		disConnect();
	}
	
	//getAllRegister(); //디비에 저장되어 있는 전체 데이터를 읽어와서 AttayList에 저장해서 리턴하는 함수
	public ArrayList<RegisterDo> getAllRegister() {
		System.out.println("getAllRegister()시작 ");
		connect();
		
		ArrayList<RegisterDo> aList = new ArrayList<RegisterDo>();
		
		//sql문 실행
		String sql = "select * from register";
		try {
			pstmt = conn.prepareStatement(sql);
			//sql문 실행
			rs = pstmt.executeQuery();
			//rs에 담겨있는 테이블 데이터를 Do 타입의 ArryList에 저장 하는 코드
			while(rs.next()) {
				RegisterDo rdo = new RegisterDo();
				rdo.setUsername(rs.getString(1));
				rdo.setEmail(rs.getString(2));
				
				aList.add(rdo);
			}
			System.out.println("getAllRegister() 처리완료");
		}
		catch (SQLException e){
				e.printStackTrace();
			}
		
		disConnect();
		return aList;
	}

}
