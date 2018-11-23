package com.bilibili.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.bilibili.biz.UserBiz;
import com.bilibili.entity.Comments;
import com.bilibili.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction   extends ActionSupport implements RequestAware, SessionAware{

	private Map<String, Object> session;
	private Map<String, Object> request;
	private UserBiz userBiz;
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
	
	private Users user;
	public void setUser(Users user) {
		this.user = user;
	}
	public Users getUser() {
		return user;
	}
	public String login() throws Exception {
		// TODO Auto-generated method stub
		List loginList = this.userBiz.Login(user);
		if (loginList != null && loginList.size() > 0){
			session.put("User", loginList.get(0));
			return "Index";
		}
		return "Login";
	}
	
	
	private Comments addComment;
	
	public Comments getAddComment() {
		return addComment;
	}
	public void setAddComment(Comments addComment) {
		this.addComment = addComment;
	}
	public String addComment() throws Exception {
		// TODO Auto-generated method stub

		this.userBiz.addComment(addComment);
		return "AddComment";
		
	}
	
	
	private Comments deleteComment;
	
	public void setDeleteComment(Comments deleteComment) {
		this.deleteComment = deleteComment;
	}
	public String deleteComment() throws Exception {
		// TODO Auto-generated method stub

		this.userBiz.deleteComment(deleteComment);
		return "DeleteComment";
		
	}
	
	
	

}
