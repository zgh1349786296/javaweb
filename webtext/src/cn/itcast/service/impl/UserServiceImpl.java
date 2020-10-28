package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.dao.impl.UserDaoImpl;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
    private UserDao dao=  new UserDaoImpl();
    @Override
    public List<User> findAll() {
        return dao.findAll();
    }
    @Override
    public  void addUser(User user){
        dao.add(user);
    }

    @Override
    public User login(User user) {
       return  dao.findManagerByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public void delete(String id) {
       dao.delete(Integer.parseInt(id));
    }

    @Override
    public User findUserById(String id) {
        return dao.finduserbyid(Integer.parseInt(id));
    }

    @Override
    public void update(User user) {
        dao.update(user);
    }

}
