package com.bilibili.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.bilibili.biz.MoiveInfoBiz;
import com.bilibili.biz.UserBiz;
import com.bilibili.entity.Comments;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Topics;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class MoiveInfoAction extends ActionSupport implements RequestAware, SessionAware{
	
	MoiveInfoBiz moiveInfoBiz;
	UserBiz userBiz;
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}


	public void setMoiveInfoBiz(MoiveInfoBiz moiveInfoBiz) {
		this.moiveInfoBiz = moiveInfoBiz;
	}
	
	Map<String, Object> session;
	Map<String, Object> request;
	
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}


	public String index() throws Exception {
		
		List topicList = moiveInfoBiz.getAllTopic();
		
		//List MoiveInfoList = moiveInfoBiz.getMoiveInfoByTopicId(1);
		List moiveInfoList = new ArrayList();
		for (int i=0; i<topicList.size(); i++){
			Topics topic = (Topics)topicList.get(i);
			moiveInfoList.add(moiveInfoBiz.getMoiveInfoByTopicId(topic.getId()));
		}

		request.put("TopicList", topicList);
		request.put("MoiveInfoList", moiveInfoList);
		// TODO Auto-generated method stub

	
		return "index";
	}
	
	
	
	private Moiveinfos movienInfos;
	public void setMovienInfos(Moiveinfos movienInfos) {
		this.movienInfos = movienInfos;
	}
	public String videoIndex() throws Exception {
		
		//查询视频 和视频作者
		Moiveinfos moiveInfo = this.moiveInfoBiz.getMoiveInfoById(this.movienInfos.getId());
		moiveInfo.setUserinfo(this.moiveInfoBiz.getAuthorById(moiveInfo.getUserinfo().getId())); 
		
		//查询评论 和评论作者
		List comments = this.moiveInfoBiz.getCommentById(this.movienInfos.getId());

		for (int i=0; i<comments.size(); i++){
			Comments comment = (Comments)comments.get(i);
			comment.setUserinfo(this.moiveInfoBiz.getAuthorById(comment.getUserinfo().getId()));
		}
	
		request.put("MoiveInfo", moiveInfo);
		request.put("CommentsList", comments);
	
		
		return "VideoIndex";
	}




		
		
}
