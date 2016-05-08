package gapp.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "status")
public class ApplicationStatus implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	int status_Id;

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	@JoinColumn(name = "application_Id")
	Application application;

	@ManyToOne
	@JoinColumn(name = "student_Id")
	Studentdetails student;

	@Column(name = "status")
	@ElementCollection
	private List<String> status;

	private Date eventTime;
	private String comment;

	public int getStatus_Id() {
		return status_Id;
	}

	public void setStatus_Id(int status_Id) {
		this.status_Id = status_Id;
	}

	public List<String> getStatus() {
		return status;
	}

	public void setStatus(List<String> status) {
		this.status = status;
	}

	public Date getEventTime() {
		return eventTime;
	}

	public void setEventTime(Date eventTime) {
		this.eventTime = eventTime;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Application getApplication() {
		return application;
	}

	public void setApplication(Application application) {
		this.application = application;
	}

	public Studentdetails getStudent() {
		return student;
	}

	public void setStudent(Studentdetails student) {
		this.student = student;
	}

}
