package com.bilibili.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private String user;
	private String password;
	private Set moiveinfoses = new HashSet(0);
	private Set commentses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** full constructor */
	public Users(String user, String password, Set moiveinfoses, Set commentses) {
		this.user = user;
		this.password = password;
		this.moiveinfoses = moiveinfoses;
		this.commentses = commentses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getMoiveinfoses() {
		return this.moiveinfoses;
	}

	public void setMoiveinfoses(Set moiveinfoses) {
		this.moiveinfoses = moiveinfoses;
	}

	public Set getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set commentses) {
		this.commentses = commentses;
	}

}