package com.bilibili.biz;

import java.util.List;

import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;
import com.bilibili.entity.Pager;

public interface MoiveInfoBiz {
	public List getAllTopic();
	
	public List getMoiveInfoByTopicId(int id);
	
	public Userinfo getAuthorById(int id);
	
	public Moiveinfos getMoiveInfoById(int id);
	
	public List getCommentById(int id);
	
	
	//获取分页新闻
	public List getAllMoiveinfosByPage(int page,int pageSize);
	//获取pager属性
	public Pager getPagerOfAllMoiveinfos(int pageSize);
	
	//根据条件获取分页新闻
	public List getMoiveinfosConditionAndPage(
			Moiveinfos condition,int page,int pageSize);
	//获取条件Pager属性
	public Pager getPagerOfNewsinfo(Moiveinfos condition,int pageSize);
	
	public void deleteNews(int id);
	
	public void addMoiveinfos(Moiveinfos moiveinfo);
	
	public Moiveinfos toModify(Moiveinfos moiveinfo);
	
	public void doModify(Moiveinfos moiveinfo);
	
}
