package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;

import com.bilibili.dao.UserDao;
import com.bilibili.entity.Comments;
import com.bilibili.entity.Moiveinfos;
import com.bilibili.entity.Userinfo;
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
	@Override
	public void deleteComment(Comments comment) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(comment);
	}
	@Override
	public Userinfo getUserInfoById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Userinfo userInfo=(Userinfo)session.get(Userinfo.class, id);
		return userInfo;
	}
	@Override
	public List getMoiveInfoByUserId(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Criteria c = session.createCriteria(Moiveinfos.class);	
		c.add(Restrictions.eq("users.id",id));
		c.setMaxResults(5);
		return c.list();
	}

}
