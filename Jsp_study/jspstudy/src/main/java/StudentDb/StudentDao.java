package StudentDb;

import java.util.ArrayList;

public class StudentDao {
	//배열 리스트를 정의 (선언)
	ArrayList<StudentDo> v = new ArrayList<StudentDo>();
	
	//배열 리스트에 데이터 저장하는 메소드
	public void insertStudent(StudentDo sdo) {
		v.add(sdo);
	}
	//배열 리스트의 전체 데이터를 가져오는 메소드
	public ArrayList<StudentDo> getAllStudent() {
		return v; 
	}
}
