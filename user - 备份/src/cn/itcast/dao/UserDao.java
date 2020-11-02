package cn.itcast.dao;

import cn.itcast.domain.User;

import java.util.List;
import java.util.Map;

public interface UserDao {

    public List<User> findAll();

    User findManagerByUsernameAndPassword(String username, String password);

    User findUserByUsernameAndPassword(String username, String password);

void add(User user);

void delete(int i);


    User finById(int id);

    void update(User user);

    int findTotalCount(Map<String, String[]> condition);

    List<User> findByPage(int star, int rows, Map<String, String[]> condition);
}
