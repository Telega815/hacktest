package ru.testh.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.testh.dao.interfaces.GroupAuthoritiesDAO;
import ru.testh.dao.interfaces.GroupMembersDAO;
import ru.testh.entities.GroupAuthorities;

import java.util.List;

@Component
public class GroupAuthoritiesDAOImpl implements GroupAuthoritiesDAO {
    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    GroupMembersDAO groupMembersDAO;

    @Transactional
    @Override
    public List<GroupAuthorities> getAuthorities(long groupId) {
        return (List<GroupAuthorities>) sessionFactory.getCurrentSession()
                .createQuery("from GroupAuthorities where groupId = :groupId").setLong("groupId", groupId)
                .list();
    }

    @Transactional
    @Override
    public List<GroupAuthorities> getAuthorities(String username) {
        Long groupId = groupMembersDAO.getGroupMember(username).getGroupId();
        return (List<GroupAuthorities>)sessionFactory.getCurrentSession()
                .createQuery("from GroupAuthorities where groupId = :groupId").setLong("groupId", groupId).list();
    }
}
