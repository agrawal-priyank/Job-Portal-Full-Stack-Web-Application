package edu.neu.pojo;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table (name = "Job")
public class Job {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "job_id", unique = true, nullable = false)
	private Long jobId;
	
	@Column (name = "title", nullable = false, length = 40)
	private String title;
	
	@Column (name = "location", nullable = false, length = 40)
	private String location;
	
	@Column (name = "responsibilities", length = 255)
	private String responsibilities;
	
	@Column (name = "qualifications", nullable = false, length = 255)
	private String qualifications;
	
	@Column (name = "date")
	private Date date;
	
	@OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
	private Application application;
	
	//(cascade = CascadeType.ALL)
	@ManyToOne
	@JoinColumn(name="user_id")
	private Employer employer;
	   
	public Employer getEmployer() {
		return employer;
	}
	public void setEmployer(Employer employer) {
		this.employer = employer;
	}
	public Long getJobId() {
		return jobId;
	}
	public void setJobId(Long jobId) {
		this.jobId = jobId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getQualifications() {
		return qualifications;
	}
	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getResponsibilities() {
		return responsibilities;
	}
	public void setResponsibilities(String responsibilities) {
		this.responsibilities = responsibilities;
	}

}
