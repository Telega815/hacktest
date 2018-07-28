package ru.testh.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.testh.dao.interfaces.GroupMembersDAO;
import ru.testh.dao.interfaces.GroupsDAO;
import ru.testh.dao.interfaces.UsersDAO;
import ru.testh.entities.User;

@Service
public class UserService {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UsersDAO usersDAO;
    @Autowired
    private GroupMembersDAO groupMembersDAO;
    @Autowired
    private EmailService emailService;

    @Autowired
    private GroupsDAO groupsDAO;
    public boolean createUser(User user) {
        user.setPwd(passwordEncoder.encode(user.getPwd()));
        user.setEmailConfirmed(false);
        user.setConfirmKey(RandomStringService.randomAlphaNumeric(10));
        usersDAO.saveUser(user);
        groupMembersDAO.saveUser(groupsDAO.getGroup("users").getId(), user.getEmail());
        emailService.sendRegMsg(user.getEmail(), user.getConfirmKey());
        return true;
    }

    public String getAuthenticatedUserName(){
        return SecurityContextHolder.getContext().getAuthentication().getName();
    }
}
