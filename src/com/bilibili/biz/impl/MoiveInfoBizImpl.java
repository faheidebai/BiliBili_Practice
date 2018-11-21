package com.bilibili.biz.impl;

import java.util.List;

import com.bilibili.biz.MoiveInfoBiz;
import com.bilibili.dao.MoiveinfoDao;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Users;

public class MoiveInfoBizImpl implements MoiveInfoBiz{
	
	MoiveinfoDao moiveInfoDao;
		
	public void setMoiveInfoDao(MoiveinfoDao moiveInfoDao) {
		this.moiveInfoDao = moiveInfoDao;
	}

	@Override
	public List getAllTopic() {
		// TODO Auto-generated method stub
		return moiveInfoDao.getAllTopic();
	}

	@Override
	public List getMoiveInfoByTopicId(int id) {
		// TODO Auto-generated method stub
		return moiveInfoDao.getMoiveInfoByTopicId(id);
	}

	@Override
	public Users getAuthorById(int id) {
		// TODO Auto-generated method stub
		return moiveInfoDao.getAuthorById(id);
	}

	@Override
	public Moiveinfos getMoiveInfoById(int id) {
		// TODO Auto-generated method stub
		return moiveInfoDao.getMoiveInfoById(id);
	}
	
	@Override
	public List getCommentById(int id) {
		// TODO Auto-generated method stub
		return moiveInfoDao.getCommentById(id);
	}



}
