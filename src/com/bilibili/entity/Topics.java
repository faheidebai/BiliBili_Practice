package com.bilibili.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Topics entity. @author MyEclipse Persistence Tools
 */

public class Topics implements java.io.Serializable {

	// Fields

	private Integer id;
	private String topicName;
	private Set moiveinfoses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Topics() {
	}

	/** full constructor */
	public Topics(String topicName, Set moiveinfoses) {
		this.topicName = topicName;
		this.moiveinfoses = moiveinfoses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTopicName() {
		return this.topicName;
	}

	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}

	public Set getMoiveinfoses() {
		return this.moiveinfoses;
	}

	public void setMoiveinfoses(Set moiveinfoses) {
		this.moiveinfoses = moiveinfoses;
	}

}