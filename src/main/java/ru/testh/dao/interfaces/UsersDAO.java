package ru.testh.dao.interfaces;

import ru.testh.entities.User;

public interface UsersDAO {
    User getUser(String email);
    void saveUser(User user);
    void updateUser(User user);
}
