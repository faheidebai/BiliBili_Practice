package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import com.bilibili.dao.MoiveinfoDao;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Topics;
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
		c.add(Restrictions.eq("id",id));
		c.setMaxResults(5);
		return c.list();
	}


	@Override
	public Users getAuthorById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Users author=(Users)session.get(Users.class, id);
		return author;
	}


	@Override
	public List getCommentById(int id) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Comment.class);	
		c.add(Restrictions.eq("moiveinfos.id",id));
		c.setMaxResults(10);
		return c.list();
	}

}
