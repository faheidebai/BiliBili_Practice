package com.bilibili.biz.impl;

import java.util.List;

import com.bilibili.biz.MoiveInfoBiz;
import com.bilibili.dao.MoiveinfoDao;

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

}
