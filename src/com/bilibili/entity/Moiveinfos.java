package com.bilibili.entity;

/**
 * Moiveinfos entity. @author MyEclipse Persistence Tools
 */

public class Moiveinfos implements java.io.Serializable {

	// Fields

	private Integer id;
	private Userinfo userinfo;
	private Integer topicId;
	private String image;
	private String titile;
	private String moive;

	// Constructors

	/** default constructor */
	public Moiveinfos() {
	}

	/** minimal constructor */
	public Moiveinfos(Userinfo userinfo, Integer topicId) {
		this.userinfo = userinfo;
		this.topicId = topicId;
	}

	/** full constructor */
	public Moiveinfos(Userinfo userinfo, Integer topicId, String image, String titile, String moive) {
		this.userinfo = userinfo;
		this.topicId = topicId;
		this.image = image;
		this.titile = titile;
		this.moive = moive;
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

	public Integer getTopicId() {
		return this.topicId;
	}

	public void setTopicId(Integer topicId) {
		this.topicId = topicId;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitile() {
		return this.titile;
	}

	public void setTitile(String titile) {
		this.titile = titile;
	}

	public String getMoive() {
		return this.moive;
	}

	public void setMoive(String moive) {
		this.moive = moive;
	}

}