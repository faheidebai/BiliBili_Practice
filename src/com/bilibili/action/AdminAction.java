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
	public String admin() throws Exception {
		int curPage=1;//默认值，第一次查询
		if(pager!=null){
			curPage=pager.getCurPage();
		}
		List newsinfoList=null;//新闻
		if(this.moiveInfoBiz==null){
			newsinfoList=this.moiveInfoBiz.getAllMoiveinfosByPage(curPage, 5);
			this.pager=this.moiveInfoBiz.getPagerOfAllMoiveinfos(5);
		}else{
			newsinfoList=this.moiveInfoBiz.getMoiveinfosConditionAndPage(
					this.movienInfos, curPage, 5);
			this.pager=this.moiveInfoBiz.getPagerOfNewsinfo(
					this.movienInfos, 5);
		}
		this.pager.setCurPage(curPage);
		this.request.put("newsinfoList", newsinfoList);

		
		return "admin";
	}
	
	public String deleteNews() throws Exception {
	
		return "admin";
	}

}
