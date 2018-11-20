package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import com.bilibili.dao.MoiveinfoDao;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Topics;

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

}
