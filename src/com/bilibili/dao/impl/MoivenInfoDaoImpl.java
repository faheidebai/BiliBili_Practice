package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.bilibili.dao.MoiveinfoDao;
import com.bilibili.entity.Comments;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Topics;
import com.bilibili.entity.Userinfo;
import com.bilibili.entity.Users;

import freemarker.core.Comment;

public class MoivenInfoDaoImpl implements MoiveinfoDao {

	SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List getAllTopic() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Topics.class);	
		return c.list(); 
	}


	@Override
	public List getMoiveInfoByTopicId(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Moiveinfos.class);	
		c.add(Restrictions.eq("topicId",id));
		
		return c.list();
	}

	
	@Override
	public Userinfo getAuthorById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Userinfo author=(Userinfo)session.get(Userinfo.class, id);

		return author;
	}
	
	
	@Override
	public Moiveinfos getMoiveInfoById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Moiveinfos moiveinfos=(Moiveinfos)session.get(Moiveinfos.class, id);

		return moiveinfos;
	}



	@Override
	public List getCommentById(int id) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Comments.class);	
		c.add(Restrictions.eq("moiveId",id));
		c.setMaxResults(5);
		return c.list();

	}


	public Integer getCountOfAllMoiveinfos() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Moiveinfos.class);
		return c.list().size();
	}


	public List getAllMoiveinfosByPage(int page, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Moiveinfos.class);
		c.setFirstResult((page-1)*pageSize);
		c.setMaxResults(pageSize);
		return c.list();
	}


	public Integer  getCountOfMoiveinfo(Moiveinfos condition) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Moiveinfos.class);
		if(condition!=null){
			
			if(condition.getTitile()!=null
					&&!"".equals(condition.getTitile())){//标题模糊查询
				c.add(Restrictions.like("titile", 
						condition.getTitile(),MatchMode.ANYWHERE));
			}
		}
		return c.list().size();
	}

	
	public List getMoiveinfosByConditionAndPage(Moiveinfos condition, int page, int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Moiveinfos.class);
		if(condition!=null){
			
			if(condition.getTitile()!=null
					&&!"".equals(condition.getTitile())){//标题模糊查询
				c.add(Restrictions.like("titile", 
						condition.getTitile(),MatchMode.ANYWHERE));
			}
		}
		c.setFirstResult((page-1)*pageSize);
		c.setMaxResults(pageSize);
	
		return c.list();
	}
	public void deleteNews(int id) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		Moiveinfos moiveinfos=(Moiveinfos)session.get(Moiveinfos.class, id);
		session.delete(moiveinfos);
		
	}


	@Override
	public void addMoiveinfos(Moiveinfos moiveinfo) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		session.save(moiveinfo);
	}


	@Override
	public Moiveinfos toModify(Moiveinfos moiveinfo) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		Moiveinfos moiveinfos=(Moiveinfos)session.get(Moiveinfos.class, moiveinfo.getId());
		return moiveinfos;
	}


	@Override
	public void doModify(Moiveinfos moiveinfo) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		session.update(moiveinfo);
		
	}

}
