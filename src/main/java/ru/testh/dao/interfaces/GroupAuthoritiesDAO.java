package ru.testh.dao.interfaces;

import ru.testh.entities.GroupAuthorities;

import java.util.List;

public interface GroupAuthoritiesDAO {

    List<GroupAuthorities> getAuthorities(long id);
    List<GroupAuthorities> getAuthorities(String username);
}
