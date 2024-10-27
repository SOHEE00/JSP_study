package joblistDb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class joblistDao {
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
		
		//insertAddress(joblist jdo) : 입력된 주소로 데이터값을 디비에 저장하는 메소드
		public void insertJoblist(joblistDo jdo) {
			System.out.println("insertAddress()처리시작");
			connect();
			
			//sql 처리
			String sql = "insert into joblist values(?,?,?,?,?)";
			
			try {
				//sql문 완성
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, jdo.getUsername());
				pstmt.setString(2, jdo.getDate());
				pstmt.setString(3, jdo.getPeople());
				pstmt.setString(4, jdo.getEmployee());
				pstmt.setString(5, jdo.getImage());
				
				//sql문 실행
				pstmt.executeUpdate();
				
				System.out.println("insertJoblist() 처리 완료");
				
			
			} catch(SQLException e){
				e.printStackTrace();
			}
			
			disConnect();
		}
		
		//getAllJoblist()
		//디비로부터 전체데이터를 가져와서 ArrayList<Do>로 만들어서 리턴하는 메소드
		public ArrayList<joblistDo>getAllJoblist() {
			
			connect();
			
			//sql문 실행..
			ArrayList<joblistDo> jList = new ArrayList<joblistDo>();
			String sql = "select * from joblist";
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				while(rs.next()) {
									//테이블 데이터 로우에 접근
						//테이블 데이터의 칼럼데이터는 Do에 저장
					joblistDo jdo = new joblistDo();
					jdo.setUsername(rs.getString(1));
					jdo.setDate(rs.getString(2));
					jdo.setPeople(rs.getString(3));
					jdo.setEmployee(rs.getString(4));
					jdo.setImage(rs.getString(5));
					//do에 저장된 데이터를 aList에 저장
					jList.add(jdo);
				}
				System.out.println("getAllJoblist()처리완료!");
			}
			catch(SQLException e){
				e.printStackTrace();
			}
			
			
			disConnect();
			return jList;
		}
		
		//JoblistSelect(image)
		//디비에서 image에 해당하는 부분을 select해서 보여주는 기능
		
		 public ArrayList<joblistDo> JoblistSelect(String search_username) {
		        connect();
		        ArrayList<joblistDo> JList = new ArrayList<>();
		        
		        String sql = "SELECT * FROM joblist WHERE username LIKE ?";
		        //String sql = "SELECT * FROM joblist WHERE username = '" + search_username + "'";
		        
		        
		        try {
		            pstmt = conn.prepareStatement(sql);
		            
		            System.out.println(sql);
		            pstmt.setString(1, "%" + search_username + "%");
		            rs = pstmt.executeQuery();
		            while (rs.next()) {
		                joblistDo jdo = new joblistDo();
		                jdo.setUsername(rs.getString("username"));
		                jdo.setDate(rs.getString("date"));
		                jdo.setPeople(rs.getString("people"));
		                jdo.setEmployee(rs.getString("employee"));
		                jdo.setImage(rs.getString("image"));
		                JList.add(jdo);
		            }
		            System.out.println("회사 정보 검색 완료");
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        disConnect();
		        return JList;
		    }
		}
		

