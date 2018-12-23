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
	
	
	//��ȡ��ҳ����
	public List getAllMoiveinfosByPage(int page,int pageSize);
	//��ȡpager����
	public Pager getPagerOfAllMoiveinfos(int pageSize);
	
	//����������ȡ��ҳ����
	public List getMoiveinfosConditionAndPage(
			Moiveinfos condition,int page,int pageSize);
	//��ȡ����Pager����
	public Pager getPagerOfNewsinfo(Moiveinfos condition,int pageSize);
	
	public void deleteNews(int id);
	
	public void addMoiveinfos(Moiveinfos moiveinfo);
	
	public Moiveinfos toModify(Moiveinfos moiveinfo);
	
	public void doModify(Moiveinfos moiveinfo);
	
}
