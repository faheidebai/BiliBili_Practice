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
	

	
//��ȡ��������
	public Integer getCountOfAllMoiveinfos();
	//��ҳ��ѯ
	public List getAllMoiveinfosByPage(int page,int pageSize);	
	//����������ѯ���ţ���ҳ
	//��ȡ����������������
	public Integer getCountOfMoiveinfo(Moiveinfos condition);
	//����������ҳ
	public List getMoiveinfosByConditionAndPage(Moiveinfos condition,int page,int pageSize);
}
