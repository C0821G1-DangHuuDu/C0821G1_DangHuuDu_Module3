package dao;

import model.User;

import java.util.List;

public interface IUserDAO {
    public List<User> selectAllUsers();
    public List<User> searchUser(String country);

    List<User> sortUsers();
}
