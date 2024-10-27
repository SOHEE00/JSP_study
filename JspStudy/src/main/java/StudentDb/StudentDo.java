

package StudentDb;

public class StudentDo {
	private String name;
	private String tel;
	private String email;
	private String hobby;
	private String image;
	
	//멤버 변수에 저장된 데이터를 출력하는 메소드
	@Override
	public String toString() {
		return "StudentDo [name=" + name + ", tel=" + tel + ", email=" + email + ", hobby=" + hobby + ", image=" + image
				+ ", getName()=" + getName() + ", getTel()=" + getTel() + ", getEmail()=" + getEmail() + ", getHobby()="
				+ getHobby() + ", getImage()=" + getImage() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	//멤버 메소드는 멤버변수 관리(저장/읽기)를 위한 getter/setter 구성..
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
