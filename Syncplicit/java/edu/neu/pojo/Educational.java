package edu.neu.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name = "Educational")
public class Educational{

	@SuppressWarnings("unused")
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "edu_id", unique = true, nullable = false)
	private Long eduId;
	
	@Column (name = "degree_name", nullable = false, length = 20)
	private String degreeName;
	
	@Column (name = "course_name", nullable = false, length = 20)
	private String courseName;
	
	@Column (name = "school_name", nullable = false, length = 20)
	private String schoolName;
	
	@Column (name = "started_date", nullable = false, length = 20)
	private String startedDate;
	
	@Column (name = "ended_date", length = 20)
	private String endedDate;
		
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="user_id")
	private Person person;
		
	public String getDegreeName() {
		return degreeName;
	}
	public void setDegreeName(String degreeName) {
		this.degreeName = degreeName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getStartedDate() {
		return startedDate;
	}
	public void setStartedDate(String startedDate) {
		this.startedDate = startedDate;
	}
	public String getEndedDate() {
		return endedDate;
	}
	public void setEndedDate(String endedDate) {
		this.endedDate = endedDate;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}	

}
