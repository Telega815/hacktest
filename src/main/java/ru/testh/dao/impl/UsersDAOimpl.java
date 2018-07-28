package ru.testh.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.testh.dao.interfaces.UsersDAO;
import ru.testh.entities.User;

@Component
public class UsersDAOimpl implements UsersDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    @Override
    public User getUser(String email) {
        return (User)sessionFactory.getCurrentSession()
                .createQuery("from User where email = :email").setParameter("email", email).list().get(0);
    }

    @Transactional
    @Override
    public void saveUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Transactional
    @Override
    public void updateUser(User user) {
        sessionFactory.getCurrentSession().update(user);
    }
}
