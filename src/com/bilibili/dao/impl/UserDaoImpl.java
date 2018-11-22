package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

import com.bilibili.dao.UserDao;
import com.bilibili.entity.Comments;
import com.bilibili.entity.Users;

public class UserDaoImpl implements UserDao {

	SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List Login(Users user) {
		// TODO Auto-generated method stub
		List list = null;
		Session session = sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Users.class);
		Example example=Example.create(user);
		c.add(example);
		list=c.list();
	
		return list;


	}
	
	public void addComment(Comments comment) {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(comment);
		
	}

}
