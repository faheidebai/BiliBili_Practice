package com.bilibili.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

import com.bilibili.dao.UserDao;
import com.bilibili.entity.Users;

public class UserDaoImpl implements UserDao {

	SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public boolean Login(Users user) {
		// TODO Auto-generated method stub
		List list = null;
		Session session = sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Users.class);
		Example example=Example.create(user);
		//c.add(example);
		//list=c.list();
		if (example !=null ){
			return true;
		}
		return false ;
		/*
		String hql="from Users where user=? and password=?";
		Query query = session.createQuery(hql);
		query.setString(0, user.getUser());
		query.setString(1, user.getPassword());
		list = query.list();
		return true;
		/*if (list == null){
			return false;
		}else{
			return true;
		}*/
		
//		

		//return list;
		
	}

}
