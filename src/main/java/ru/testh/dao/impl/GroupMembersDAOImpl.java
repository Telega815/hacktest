package ru.testh.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import ru.testh.dao.interfaces.GroupMembersDAO;
import ru.testh.entities.GroupMembers;

@Component
public class GroupMembersDAOImpl implements GroupMembersDAO {
    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    @Override
    public GroupMembers getGroupMember(String username) {
        return (GroupMembers) sessionFactory.getCurrentSession()
                .createQuery("from GroupMembers where username = :username").setString("username", username)
                .list().get(0);
    }

    @Transactional
    @Override
    public void saveUser(Long group_id, String username) {
        GroupMembers groupMember = new GroupMembers();
        groupMember.setUsername(username);
        groupMember.setGroupId(group_id);
        sessionFactory.getCurrentSession().save(groupMember);
    }
}
