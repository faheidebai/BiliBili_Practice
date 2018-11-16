package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.bilibili.dao.MoiveinfoDao;
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
		Criteria c =session.createCriteria(Topics.class);	
		return c.list();
	}

}
