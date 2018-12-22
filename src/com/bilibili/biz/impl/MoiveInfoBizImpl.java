package com.bilibili.biz.impl;

import java.util.List;

import com.bilibili.biz.MoiveInfoBiz;
import com.bilibili.dao.MoiveinfoDao;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;
import com.bilibili.entity.Pager;

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
	public Userinfo getAuthorById(int id) {
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

	
	

	public List getAllMoiveinfosByPage(int page, int pageSize) {
		// TODO Auto-generated method stub
		return this.moiveInfoDao.getAllMoiveinfosByPage(page, pageSize);
	}

	@Override
	public Pager getPagerOfAllMoiveinfos(int pageSize) {
		// TODO Auto-generated method stub
		int count=this.moiveInfoDao.getCountOfAllMoiveinfos();
		Pager pager=new Pager();
		pager.setPerPageRows(pageSize);//每页记录条数
		pager.setRowCount(count);//总记录数
		return pager;
	}

	@Override
	public List getMoiveinfosConditionAndPage(Moiveinfos condition, int page, int pageSize) {
		// TODO Auto-generated method stub
		return this.moiveInfoDao.getMoiveinfosByConditionAndPage(condition, page, pageSize);
	}

	@Override
	public Pager getPagerOfNewsinfo(Moiveinfos condition, int pageSize) {
		// TODO Auto-generated method stub
		int count=this.moiveInfoDao.getCountOfMoiveinfo(condition);
		Pager pager=new Pager();
		pager.setPerPageRows(pageSize);//每页记录条数
		pager.setRowCount(count);//总记录数
		return pager;
	}





}
