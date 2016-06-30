package com.websystique.springmvc.service;


import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.websystique.springmvc.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserServiceImpl() {

	}

	public UserServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public static List<User> users;
	
	@Override
	@Transactional
	public List<User> findAllUsers() {
		
		@SuppressWarnings("unchecked")
		List<User> users = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return users;
	}
	
	@Override
	@Transactional
	public User findById(int id) {
		
		String hql1 = "from User where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql1);

		@SuppressWarnings("unchecked")
		List<User> listUser1 = (List<User>) query.list();

		if (listUser1 != null && !listUser1.isEmpty()) {
			return listUser1.get(0);
		}
		return null;
	}
	
	@Override
	@Transactional
	public void saveUser(User user) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	@Transactional
	public void updateUser(User user) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	@Transactional
	public void deleteUserById(int id) {
		
		User userToDelete = new User();
		userToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(userToDelete);
		
	}

	@Override
	@Transactional
	public boolean isUserExist(User user) {
		return findById(user.getId())!=null;
	}
	

}
