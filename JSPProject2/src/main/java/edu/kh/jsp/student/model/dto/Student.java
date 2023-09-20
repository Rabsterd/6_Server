package edu.kh.jsp.student.model.dto;

public class Student {

	private String StudentNo;
	private String StudentName;
	private String StudentAddress;
	private String departmentName;
	
	public Student() {}
	
	public Student(String studentNo, String studentName, String studentAddress, String departmentName) {
		super();
		StudentNo = studentNo;
		StudentName = studentName;
		StudentAddress = studentAddress;
		this.departmentName = departmentName;
	}
	
	public String getStudentNo() {
		return StudentNo;
	}
	public void setStudentNo(String studentNo) {
		StudentNo = studentNo;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public String getStudentAddress() {
		return StudentAddress;
	}
	public void setStudentAddress(String studentAddress) {
		StudentAddress = studentAddress;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	@Override
	public String toString() {
		return "Student [StudentNo=" + StudentNo + ", StudentName=" + StudentName + ", StudentAddress=" + StudentAddress
				+ ", departmentName=" + departmentName + "]";
	}
	
	
	
}
