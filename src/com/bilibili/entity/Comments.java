package com.bilibili.entity;

/**
 * Comments entity. @author MyEclipse Persistence Tools
 */

public class Comments implements java.io.Serializable {

	// Fields

	private CommentsId id;
	private Moiveinfos moiveinfos;
	private String content;

	// Constructors

	/** default constructor */
	public Comments() {
	}

	/** full constructor */
	public Comments(CommentsId id, Moiveinfos moiveinfos, String content) {
		this.id = id;
		this.moiveinfos = moiveinfos;
		this.content = content;
	}

	// Property accessors

	public CommentsId getId() {
		return this.id;
	}

	public void setId(CommentsId id) {
		this.id = id;
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