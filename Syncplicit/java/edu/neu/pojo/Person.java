package edu.neu.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "Person")
@PrimaryKeyJoinColumn(name = "user_id")
@Inheritance(strategy = InheritanceType.JOINED)
public class Person extends Credential implements Serializable {

	private static final long serialVersionUID = 6841097441101418764L;

	@Column(name = "first_name", nullable = false, length = 20)
	private String firstName;

	@Column(name = "last_name", nullable = false, length = 20)
	private String lastName;

	@Column(name = "street_address", nullable = false, length = 40)
	private String streetAddress;

	@Column(name = "city", nullable = false, length = 20)
	private String city;

	@Column(name = "state", nullable = false, length = 20)
	private String state;

	@Column(name = "country", nullable = false, length = 20)
	private String country;

	@Column(name = "email_id", nullable = false, length = 40)
	private String emailId;

	@Column(name = "contact", nullable = false, length = 20)
	private String contact;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "person", cascade = CascadeType.ALL)
	private Set<Educational> educationalList;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "person", cascade = CascadeType.ALL)
	private Set<Professional> professionalList = new HashSet<Professional>();

	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Skill> skillList;

	@OneToOne(cascade = CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private Application application;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public Set<Professional> getProfessionalList() {
		if (professionalList == null) {
			return new HashSet<Professional>();
		}
		return professionalList;
	}

	@JoinTable(name = "person_skill", catalog = "testing", joinColumns = {
			@JoinColumn(name = "user_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "skill_id", nullable = false, updatable = false) })
	public List<Skill> getSkillList() {
		if (skillList == null) {
			return new ArrayList<Skill>();
		}
		return skillList;
	}

	public void setSkillList(List<Skill> skillList) {
		this.skillList = skillList;
	}

	public Set<Educational> getEducationalList() {
		return educationalList;
	}

	public void setEducationalList(Set<Educational> educationalList) {
		this.educationalList = educationalList;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public Application getApplication() {
		return application;
	}

	public void setApplication(Application application) {
		this.application = application;
	}

}
