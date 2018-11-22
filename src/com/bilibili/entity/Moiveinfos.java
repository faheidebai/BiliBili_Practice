package com.bilibili.entity;

/**
 * Moiveinfos entity. @author MyEclipse Persistence Tools
 */

public class Moiveinfos implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private Topics topics;
	private String image;
	private String titile;
	private String moive;

	// Constructors

	/** default constructor */
	public Moiveinfos() {
	}

	/** minimal constructor */
	public Moiveinfos(Users users, Topics topics) {
		this.users = users;
		this.topics = topics;
	}

	/** full constructor */
	public Moiveinfos(Users users, Topics topics, String image, String titile, String moive) {
		this.users = users;
		this.topics = topics;
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

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Topics getTopics() {
		return this.topics;
	}

	public void setTopics(Topics topics) {
		this.topics = topics;
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