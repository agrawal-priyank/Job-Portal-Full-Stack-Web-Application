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
@Table(name = "Professional")
public class Professional {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "pro_id", unique = true, nullable = false)
	private Long professionalId;
	
	@Column(name = "company_name", nullable = false, length = 20)
	private String companyName;
	
	@Column(name = "designation", nullable = false, length = 20)
	private String designation;
	
	@Column(name = "start_date", nullable = false, length = 20)
	private String startDate;
	
	@Column(name = "end_date", nullable = false, length = 20)
	private String endDate;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private Person person;
	
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

}
