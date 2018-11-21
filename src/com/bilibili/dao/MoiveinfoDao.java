package com.bilibili.dao;

import java.util.List;

import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Users;

public interface MoiveinfoDao {
	
	public List getAllTopic();
	
	public List getMoiveInfoByTopicId(int id);
	
	public Users getAuthorById(int id);
	
	public Moiveinfos getMoiveInfoById(int id);
		
	public List getCommentById(int id);
}
