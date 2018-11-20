package com.bilibili.entity;

/**
 * CommentsId entity. @author MyEclipse Persistence Tools
 */

public class CommentsId implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;

	// Constructors

	/** default constructor */
	public CommentsId() {
	}

	/** full constructor */
	public CommentsId(Integer id, Users users) {
		this.id = id;
		this.users = users;
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

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CommentsId))
			return false;
		CommentsId castOther = (CommentsId) other;

		return ((this.getId() == castOther.getId())
				|| (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())))
				&& ((this.getUsers() == castOther.getUsers()) || (this.getUsers() != null
						&& castOther.getUsers() != null && this.getUsers().equals(castOther.getUsers())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result + (getUsers() == null ? 0 : this.getUsers().hashCode());
		return result;
	}

}