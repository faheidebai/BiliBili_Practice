package com.bilibili.biz;

import java.util.List;

import com.bilibili.entity.Users;

public interface MoiveInfoBiz {
	public List getAllTopic();
	
	public List getMoiveInfoByTopicId(int id);
	
	public Users getAuthorById(int id);
	
	public List getCommentById(int id);
	
}
