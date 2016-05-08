package gapp.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Department")
public class Department implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	int departmentId;

	String departmentName;

	@OneToMany(mappedBy = "department", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	List<Program> programs;

	@OneToMany(mappedBy = "department", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	List<Studentdetails> student;
	
	@OneToMany(mappedBy = "department", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	List<ExtraInfo> ExtraInfo;

	
	public List<ExtraInfo> getExtraInfo() {
		return ExtraInfo;
	}

	public void setExtraInfo(List<ExtraInfo> extraInfo) {
		ExtraInfo = extraInfo;
	}

	public List<Studentdetails> getStudent() {
		return student;
	}

	public void setStudent(List<Studentdetails> student) {
		this.student = student;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public List<Program> getPrograms() {
		return programs;
	}

	public void setPrograms(List<Program> programs) {
		this.programs = programs;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

}
