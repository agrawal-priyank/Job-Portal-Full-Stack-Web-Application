package edu.neu.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "Employer")
@PrimaryKeyJoinColumn(name= "user_id")
public class Employer extends Credential implements Serializable{

	private static final long serialVersionUID = -2183702379075362120L;

	@Column(name = "employer_name", nullable = false, length = 40)
	private String employerName;
	
	@Column(name = "street_address", nullable = false, length = 40)
	private String streetAddress;
	
	@Column(name = "city", nullable = false, length = 20)
	private String city;
	
	@Column(name = "state", nullable = false, length = 20)
	private String state;
	
	@Column(name = "country", nullable = false, length = 20)
	private String country;
	
	@Column(name = "website_url", nullable = false, length = 20)
	private String websiteUrl;

	@OneToMany(fetch=FetchType.LAZY, mappedBy="employer", cascade = CascadeType.ALL)
	private Set<Job> jobList;
	
	public String getEmployerName() {
		return employerName;
	}
	public void setEmployerName(String employerName) {
		this.employerName = employerName;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getWebsiteUrl() {
		return websiteUrl;
	}
	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}
	public Set<Job> getJobList() {
		if(jobList == null){
			return new HashSet<Job>();
		}
		return jobList;
	}
	
}
