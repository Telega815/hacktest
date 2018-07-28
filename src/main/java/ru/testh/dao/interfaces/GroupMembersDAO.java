package ru.testh.dao.interfaces;

import ru.testh.entities.GroupMembers;

public interface GroupMembersDAO {
    GroupMembers getGroupMember(String username);
    void saveUser(Long group_id, String username);
}
