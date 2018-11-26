package com.bilibili.biz.impl;

import java.util.List;

import com.bilibili.biz.UserBiz;
import com.bilibili.dao.UserDao;
import com.bilibili.entity.Comments;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;

public class UserBizImpl implements UserBiz{

	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List Login(Users user) {
		// TODO Auto-generated method stub
		return this.userDao.Login(user);
	}

	@Override
	public void addComment(Comments comment) {
		// TODO Auto-generated method stub
		this.userDao.addComment(comment);
	}

	@Override
	public void deleteComment(Comments comment) {
		// TODO Auto-generated method stub
		this.userDao.deleteComment(comment);
	}

	@Override
	public Userinfo getUserInfoById(int id) {
		// TODO Auto-generated method stub
		return this.userDao.getUserInfoById(id);
	}

	@Override
	public List getMoiveInfoByUserId(int id) {
		// TODO Auto-generated method stub
		return this.userDao.getMoiveInfoByUserId(id);
	}

}
