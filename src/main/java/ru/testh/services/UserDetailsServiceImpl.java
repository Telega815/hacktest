package ru.testh.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ru.testh.dao.interfaces.GroupAuthoritiesDAO;
import ru.testh.dao.interfaces.UsersDAO;
import ru.testh.entities.User;


@Service(value = "userDetailsServiceImpl")
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    UsersDAO usersDAO;

    @Autowired
    private GroupAuthoritiesDAO groupAuthoritiesDAO;

    public UserDetailsServiceImpl() {
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user;
        try {
            user = usersDAO.getUser(username);
        } catch (Exception e) {
            throw new UsernameNotFoundException(username+" not found");
        }

        return new org.springframework.security.core.userdetails.User(username, user.getPwd(), true, true, true, true, groupAuthoritiesDAO.getAuthorities(username));
    }
}
