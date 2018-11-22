package com.bilibili.biz.impl;

import java.util.List;

import com.bilibili.biz.UserBiz;
import com.bilibili.dao.UserDao;
import com.bilibili.entity.Comments;
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

}
