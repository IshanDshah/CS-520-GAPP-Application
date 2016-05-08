package gapp.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.beust.jcommander.internal.Nullable;

@Entity
@Table(name = "application")
public class Application implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer application_Id;

	@ManyToOne
	@JoinColumn(name = "programId")
	Program program;

	private String term;
	@Column(nullable = true)
	private boolean saved;

	public boolean isSaved() {
		return saved;
	}

	public void setSaved(boolean saved) {
		this.saved = saved;
	}

	public Date getDatechanged() {
		return datechanged;
	}

	public void setDatechanged(Date datechanged) {
		this.datechanged = datechanged;
	}

	@Column(nullable = true)
	private Date datechanged;

	@OneToMany(mappedBy = "application", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
	List<ApplicationStatus> status;

	public Integer getApplication_Id() {
		return application_Id;
	}

	public void setApplication_Id(Integer application_Id) {
		this.application_Id = application_Id;
	}

	public Program getProgram() {
		return program;
	}

	public void setProgram(Program program) {
		this.program = program;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public List<ApplicationStatus> getStatus() {
		return status;
	}

	public void setStatus(List<ApplicationStatus> status) {
		this.status = status;
	}

}
