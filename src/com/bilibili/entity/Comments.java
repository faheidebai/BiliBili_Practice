package com.bilibili.entity;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */

public class Comments implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private Moiveinfos moiveinfos;
	private String content;

	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** full constructor */
	public Comments(Users users, Moiveinfos moiveinfos, String content) {
		this.users = users;
		this.moiveinfos = moiveinfos;
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

	public Moiveinfos getMoiveinfos() {
		return this.moiveinfos;
	}

	public void setMoiveinfos(Moiveinfos moiveinfos) {
		this.moiveinfos = moiveinfos;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}