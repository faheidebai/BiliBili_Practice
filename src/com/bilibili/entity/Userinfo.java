package com.bilibili.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private String userName;
	private String avatar;
	private String personality;
	private Set moiveinfoses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(Integer userId, String userName, String personality) {
		this.userId = userId;
		this.userName = userName;
		this.personality = personality;
	}

	/** full constructor */
	public Userinfo(Integer userId, String userName, String avatar, String personality, Set moiveinfoses) {
		this.userId = userId;
		this.userName = userName;
		this.avatar = avatar;
		this.personality = personality;
		this.moiveinfoses = moiveinfoses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
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

	public Set getMoiveinfoses() {
		return this.moiveinfoses;
	}

	public void setMoiveinfoses(Set moiveinfoses) {
		this.moiveinfoses = moiveinfoses;
	}

}