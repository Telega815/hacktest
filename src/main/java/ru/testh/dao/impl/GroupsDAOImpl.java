package ru.testh.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.testh.dao.interfaces.GroupsDAO;
import ru.testh.entities.Groups;
import ru.testh.entities.User;

import java.util.List;

@Component
public class GroupsDAOImpl implements GroupsDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Transactional
    @Override
    public List<Groups> getGroups() {
        return (List<Groups>) sessionFactory.getCurrentSession()
                .createCriteria(User.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
    }

    @Override
    public Groups getGroup(Long id) {
        return sessionFactory.getCurrentSession().get(Groups.class, id);
    }

    @Transactional
    @Override
    public Groups getGroup(String groupName) {
        List<Groups> list = sessionFactory.getCurrentSession()
                .createQuery("from Groups where groupName = :groupName").setString("groupName", groupName).list();
        return list.get(0);
    }
}
