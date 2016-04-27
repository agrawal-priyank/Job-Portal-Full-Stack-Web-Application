package edu.neu.pojo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "skill")
public class Skill{
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "skill_id", unique = true, nullable = false)
	private Long skillId;
	
	@Column(name = "skill_name", nullable = false, length = 20)
	private String skillName;	

	@ManyToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	private List<Person> personList;
	
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	public Long getSkillId() {
		return skillId;
	}
	public void setSkillId(Long skillId) {
		this.skillId = skillId;
	}
	
	public List<Person> getPersonList() {
		return personList;
	}
	public void setPersonList(List<Person> personList) {
		this.personList = personList;
	}

}
