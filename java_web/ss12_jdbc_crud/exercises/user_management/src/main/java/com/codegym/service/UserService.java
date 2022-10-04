package com.codegym.service;

import com.codegym.model.User;
import com.codegym.repository.IUserRepsitory;
import com.codegym.repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private IUserRepsitory userRepsitory = new UserRepository();
    @Override
    public void insertUser(User user) throws SQLException {
        userRepsitory.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
       return userRepsitory.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepsitory.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepsitory.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepsitory.updateUser(user);
    }

    @Override
    public List<User> findUSerByCountry(String country) {
        return userRepsitory.findUSerByCountry(country);
    }

    @Override
    public User getUserById(int id) {
        return userRepsitory.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
            userRepsitory.insertUserStore(user);
    }

    @Override
    public List<User> selectAllUsersBySP() {
        return userRepsitory.selectAllUsersBySP();
    }

    @Override
    public boolean updateUserBySP(User user) throws SQLException {
        return userRepsitory.updateUserBySP(user);
    }

    @Override
    public boolean deleteUserById(int id) throws SQLException {
        return userRepsitory.deleteUser(id);
    }
}
