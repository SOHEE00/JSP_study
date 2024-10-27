
package JobDb;

public class JobDo {
	private String name;
	private String day;
	private String per;
	private String job;
	private String image;
	
	//멤버 변수에 저장된 데이터를 출력하는 메소드
	@Override
	public String toString() {
		return "JobDo [name=" + name + ", day=" + day + ", per=" + per + ", job=" + job + ", image=" + image
				+ ", getName()=" + getName() + ", getDay()=" + getDay() + ", getPer()=" + getPer() + ", getJob()="
				+ getJob() + ", getImage()=" + getImage() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	//멤버 메소드는 멤버변수 관리(저장/읽기)를 위한 getter/setter 구성..
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getPer() {
		return per;
	}
	public void setPer(String per) {
		this.per = per;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
