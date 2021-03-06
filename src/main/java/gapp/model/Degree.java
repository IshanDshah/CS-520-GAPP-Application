package gapp.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Degree")
public class Degree implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	int degree_Id;

	private String collegeName;
	private Date startDate;
	private Date endDate;
	private String degreeGained;
	private String major;

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	private Studentdetails student;

	public Studentdetails getStudent() {
		return student;
	}

	public void setStudent(Studentdetails student) {
		this.student = student;
	}

	public int getDegree_Id() {
		return degree_Id;
	}

	public void setDegree_Id(int degree_Id) {
		this.degree_Id = degree_Id;
	}

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDegreeGained() {
		return degreeGained;
	}

	public void setDegreeGained(String degreeGained) {
		this.degreeGained = degreeGained;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}
}
