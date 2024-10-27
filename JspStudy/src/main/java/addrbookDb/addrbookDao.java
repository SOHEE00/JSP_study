package addrbookDb;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class addrbookDao {
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
	
	//insertAddress(AddrbookDo ado) : 입력된 주소로 데이터값을 디비에 저장하는 메소드
	public void insertAddress(addrbookDo ado) {
		System.out.println("insertAddress()처리시작");
		connect();
		
		//sql 처리
		String sql = "insert into addrbook values(null,?,?,?,?,?)";
		
		try {
			//sql문 완성
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ado.getName());
			pstmt.setString(2, ado.getTel());
			pstmt.setString(3, ado.getEmail());
			pstmt.setString(4, ado.getHobby());
			pstmt.setString(5, ado.getImage());
			
			//sql문 실행
			pstmt.executeUpdate();
			
			System.out.println("insertAddress() 처리 완료");
			
		
		} catch(SQLException e){
			e.printStackTrace();
		}
		
		disConnect();
	}
	
	//getAllAddress()
	//디비로부터 전체데이터를 가져와서 ArrayList<Do>로 만들어서 리턴하는 메소드
	public ArrayList<addrbookDo>getAllAddress() {
		
		connect();
		
		//sql문 실행..
		ArrayList<addrbookDo> aList = new ArrayList<addrbookDo>();
		String sql = "select * from addrbook";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
								//테이블 데이터 로우에 접근
					//테이블 데이터의 칼럼데이터는 Do에 저장
				addrbookDo ado = new addrbookDo();
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setTel(rs.getString(3));
				ado.setEmail(rs.getString(4));
				ado.setHobby(rs.getString(5));
				ado.setImage(rs.getString(6));
				//do에 저장된 데이터를 aList에 저장
				aList.add(ado);
			}
			System.out.println("getAllAddress()처리완료!");
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		
		
		disConnect();
		return aList;
	}
	
	//addressDelete(num)
	//디비에서 num에 해당되는 데이터를 삭제하는 기능
	
	public void addressDelete(int num) {
		connect();
		
		//sql문 처리
		String sql = "delete from addrbook where num=?";
		
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		
		//sql문 실행
		pstmt.executeUpdate();
		
		System.out.println("addressDelete()처리완료");
		
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		disConnect();
	}
}
