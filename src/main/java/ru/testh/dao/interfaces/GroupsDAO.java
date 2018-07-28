package ru.testh.dao.interfaces;

import ru.testh.entities.Groups;

import java.util.List;

public interface GroupsDAO {

    List<Groups> getGroups();
    Groups getGroup(Long id);
    Groups getGroup(String groupName);

}
