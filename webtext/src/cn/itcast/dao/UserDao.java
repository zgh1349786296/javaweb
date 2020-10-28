package cn.itcast.dao;

import cn.itcast.domain.User;

import java.util.List;

public interface UserDao {
    public List<User> findAll();

    public void add(User user);

    public User findManagerByUsernameAndPassword(String username,String password);

    public void delete(int id);

    public User finduserbyid(int id);

    public void update(User user);




}
