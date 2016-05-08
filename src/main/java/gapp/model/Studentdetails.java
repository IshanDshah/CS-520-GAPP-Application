package gapp.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "StudentDetails")

public class Studentdetails implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	int student_id;

	@OneToMany(mappedBy = "student", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	List<ApplicationStatus> status;

	@ManyToOne
	@JoinColumn(name = "departmentId")
	Department department;

	@OneToOne
	Users user;

	private String lastName;
	private String firstName;
	private Integer cin;

	String phone;

	private String email;
	private String gender;
	private Date dateOfBirth;
	private String citizenship;

	private double toefl;
	private double gre;
	private double gpa;

	private byte[] transcript;

	@ElementCollection
	@OneToMany(mappedBy = "student")
	private List<Degree> degrees;

	public List<Degree> getDegrees() {
		return degrees;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public void setDegrees(List<Degree> degrees) {
		this.degrees = degrees;
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public Integer getCin() {
		return cin;
	}

	public void setCin(Integer cin) {
		this.cin = cin;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<ApplicationStatus> getStatus() {
		return status;
	}

	public void setStatus(List<ApplicationStatus> status) {
		this.status = status;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getCitizenship() {
		return citizenship;
	}

	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}

	public double getToefl() {
		return toefl;
	}

	public void setToefl(double toefl) {
		this.toefl = toefl;
	}

	public double getGre() {
		return gre;
	}

	public void setGre(double gre) {
		this.gre = gre;
	}

	public double getGpa() {
		return gpa;
	}

	public void setGpa(double gpa) {
		this.gpa = gpa;
	}

	public byte[] getTranscript() {
		return transcript;
	}

	public void setTranscript(byte[] transcript) {
		this.transcript = transcript;
	}

}
