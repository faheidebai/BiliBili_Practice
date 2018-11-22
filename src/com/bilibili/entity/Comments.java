package com.bilibili.entity;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */

public class Comments implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private Integer moiveId;
	private String content;

	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** full constructor */
	public Comments(Users users, Integer moiveId, String content) {
		this.users = users;
		this.moiveId = moiveId;
		this.content = content;
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

	public Integer getMoiveId() {
		return this.moiveId;
	}

	public void setMoiveId(Integer moiveId) {
		this.moiveId = moiveId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}