package com.bilibili.entity;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String userName;
	private String avatar;
	private String personality;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(Users users, String userName, String personality) {
		this.users = users;
		this.userName = userName;
		this.personality = personality;
	}

	/** full constructor */
	public Userinfo(Users users, String userName, String avatar, String personality) {
		this.users = users;
		this.userName = userName;
		this.avatar = avatar;
		this.personality = personality;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAvatar() {
		return this.avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPersonality() {
		return this.personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}

}