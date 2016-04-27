package edu.neu.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

@Entity
@Table(name = "Credential")
@Inheritance(strategy=InheritanceType.JOINED)
public class Credential implements Serializable{

	private static final long serialVersionUID = 2679444498509503924L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id", unique = true, nullable = false)
	private Long userId;
	   
	@Column(name = "user_name", unique = true, nullable = false, length = 40)
	private String userName;
	
	@Column(name = "password", nullable = false, length = 20)
	private String password;
	
	@Column(name = "role_type", nullable = false, length = 20)
	private String roleType;
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
