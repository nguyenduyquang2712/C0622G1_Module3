package com.codegym.service;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> findUSerByCountry(String country);

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    List<User> selectAllUsersBySP();

    boolean updateUserBySP(User user) throws SQLException;

    boolean deleteUserById(int id) throws SQLException;

}
