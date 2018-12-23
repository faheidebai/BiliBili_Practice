package com.bilibili.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.bilibili.biz.MoiveInfoBiz;
import com.bilibili.biz.UserBiz;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Pager;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction  extends ActionSupport implements RequestAware, SessionAware{
	
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

	private Pager pager;
	public Pager getPager() {
		return pager;
	}
	public void setPager(Pager pager) {
		this.pager = pager;
	}
	private Moiveinfos movienInfos;
	
	public void setMovienInfos(Moiveinfos movienInfos) {
		this.movienInfos = movienInfos;
	
		
	}
	
	public Moiveinfos getMovienInfos() {
		return movienInfos;
	}


	public String admin() throws Exception {
		int curPage=1;//默认值，第一次查询
		if(pager!=null){
			curPage=pager.getCurPage();
		}
		List movienInfoList=null;//新闻
		if(this.moiveInfoBiz==null){
			movienInfoList=this.moiveInfoBiz.getAllMoiveinfosByPage(curPage, 5);
			this.pager=this.moiveInfoBiz.getPagerOfAllMoiveinfos(5);
		}else{
			movienInfoList=this.moiveInfoBiz.getMoiveinfosConditionAndPage(
					this.movienInfos, curPage, 5);
			this.pager=this.moiveInfoBiz.getPagerOfNewsinfo(
					this.movienInfos, 5);
		}
		this.pager.setCurPage(curPage);
		this.request.put("movienInfoList", movienInfoList);

		
		return "admin";
	}
	
	public String deleteNews() throws Exception {
		this.moiveInfoBiz.deleteNews(this.movienInfos.getId());
		return "admin";
	}
	
	public String getTopicName() throws Exception {
		List topicList=this.moiveInfoBiz.getAllTopic();
		this.request.put("topicList", topicList);
		return "add";
	}
	public String addMoiveInfos() throws Exception {
		this.moiveInfoBiz.addMoiveinfos(movienInfos);
		return "admin";
		
	}
	
	
	public String toModify() throws Exception {
		Moiveinfos toModifyInfo=this.moiveInfoBiz.toModify(movienInfos);
		this.request.put("toModifyInfo", toModifyInfo);
		
		return "Modify";
	}
	
	public String doModify()throws Exception {
		this.moiveInfoBiz.addMoiveinfos(movienInfos);
		
		return "admin";
	}
	

}
