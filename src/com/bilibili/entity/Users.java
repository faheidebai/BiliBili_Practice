package com.bilibili.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private Moiveinfos moiveinfos;
	private String user;
	private String password;
	private Set commentses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(Moiveinfos moiveinfos) {
		this.moiveinfos = moiveinfos;
	}

	/** full constructor */
	public Users(Moiveinfos moiveinfos, String user, String password, Set commentses) {
		this.moiveinfos = moiveinfos;
		this.user = user;
		this.password = password;
		this.commentses = commentses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Moiveinfos getMoiveinfos() {
		return this.moiveinfos;
	}

	public void setMoiveinfos(Moiveinfos moiveinfos) {
		this.moiveinfos = moiveinfos;
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

	public Set getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set commentses) {
		this.commentses = commentses;
	}

}