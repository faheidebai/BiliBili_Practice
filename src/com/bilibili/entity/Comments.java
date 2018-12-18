package com.bilibili.entity;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */

public class Comments implements java.io.Serializable {

	// Fields

	private Integer id;
	private Userinfo userinfo;
	private Integer moiveId;
	private String content;

	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** full constructor */
	public Comments(Userinfo userinfo, Integer moiveId, String content) {
		this.userinfo = userinfo;
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

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
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