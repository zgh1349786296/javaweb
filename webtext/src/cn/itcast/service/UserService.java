package cn.itcast.service;

import cn.itcast.domain.User;

import java.util.List;

public interface UserService {

    public List<User> findAll();

   public  void addUser(User user);

   public User login(User user);

   public void delete(String id);

   public User findUserById(String id);

   public void update(User user);
}
