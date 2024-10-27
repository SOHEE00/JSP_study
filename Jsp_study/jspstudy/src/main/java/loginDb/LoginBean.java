package loginDb;

public class LoginBean {
	//멤버 변수
	private String id;
	private String password;
	
	String db_userid = "user";
	String db_password = "111111";
	
	public boolean checkUser () {
		

		if (db_userid.equals(id) && db_password.equals(password)) {
			return true;
		}
		else {
			return false;
		}
}

			
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//getter/setter로 구성되는 멤버 메소드

	}
	
