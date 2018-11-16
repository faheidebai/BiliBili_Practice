package com.bilibili.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Moiveinfos entity. @author MyEclipse Persistence Tools
 */

public class Moiveinfos implements java.io.Serializable {

	// Fields

	private Integer id;
	private Topics topics;
	private String image;
	private String titile;
	private String moive;
	private Integer authorId;
	private Set commentses = new HashSet(0);
	private Set userses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Moiveinfos() {
	}

	/** minimal constructor */
	public Moiveinfos(Topics topics, String titile, String moive, Integer authorId) {
		this.topics = topics;
		this.titile = titile;
		this.moive = moive;
		this.authorId = authorId;
	}

	/** full constructor */
	public Moiveinfos(Topics topics, String image, String titile, String moive, Integer authorId, Set commentses,
			Set userses) {
		this.topics = topics;
		this.image = image;
		this.titile = titile;
		this.moive = moive;
		this.authorId = authorId;
		this.commentses = commentses;
		this.userses = userses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Integer getAuthorId() {
		return this.authorId;
	}

	public void setAuthorId(Integer authorId) {
		this.authorId = authorId;
	}

	public Set getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set commentses) {
		this.commentses = commentses;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

}