package com.bilibili.dao;

import java.util.List;

import com.bilibili.entity.Comments;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;

public interface UserDao {
	
	public List Login (Users user);
	
	public void addComment(Comments comment);
	
	public void deleteComment(Comments comment);
	
	public Userinfo getUserInfoById(int id);
	
	public List getMoiveInfoByUserId(int id);
	
	
	
}
