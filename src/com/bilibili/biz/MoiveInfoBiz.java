package com.bilibili.biz;

import java.util.List;

import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;

public interface MoiveInfoBiz {
	public List getAllTopic();
	
	public List getMoiveInfoByTopicId(int id);
	
	
	public Userinfo getAuthorById(int id);
	
	public Moiveinfos getMoiveInfoById(int id);
	
	
	public List getCommentById(int id);
	
}
