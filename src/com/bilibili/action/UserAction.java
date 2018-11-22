package com.bilibili.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.bilibili.biz.UserBiz;
import com.bilibili.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction   extends ActionSupport implements RequestAware, SessionAware{

	Map<String, Object> session;
	Map<String, Object> request;
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	private UserBiz userBiz;
	
	
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	private Users user;

	
	public void setUser(Users user) {
		this.user = user;
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
	
	

}
