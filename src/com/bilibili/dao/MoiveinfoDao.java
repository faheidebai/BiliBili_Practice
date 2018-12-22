package com.bilibili.dao;

import java.util.List;

import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;

public interface MoiveinfoDao {
	
	public List getAllTopic();
	
	public List getMoiveInfoByTopicId(int id);
	
	public Userinfo getAuthorById(int id);
	
	public Moiveinfos getMoiveInfoById(int id);
		
	public List getCommentById(int id);
	

	
//获取新闻总数
	public Integer getCountOfAllMoiveinfos();
	//分页查询
	public List getAllMoiveinfosByPage(int page,int pageSize);	
	//根据条件查询新闻，分页
	//获取该条件下新闻总数
	public Integer getCountOfMoiveinfo(Moiveinfos condition);
	//根据条件分页
	public List getMoiveinfosByConditionAndPage(Moiveinfos condition,int page,int pageSize);
}
