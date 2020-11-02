package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.dao.impl.UserDaoImpl;
import cn.itcast.domain.PageBean;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();
    @Override
    public List<User> findAll() {
        return dao.findAll();
    }
    @Override
    public User login(User user) {
        return dao.findManagerByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public void addUser(User user) {
        dao.add(user);
    }

    @Override
    public void deleteUser(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public User findUserById(String id) {
        return dao.finById(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
        dao.update(user);
    }

    @Override
    public User mlogin(User user) {
        return dao.findUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public void delSelectedUser(String[] ids) {
        //遍历
        for(String id : ids){
            //2删除调用
            dao.delete(Integer.parseInt(id));
        }
    }

    @Override
    public PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
      //强制转换
       int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);
        //创建空对象
        int totalCount = dao.findTotalCount(condition);
        if(currentPage<=0){
            currentPage=1;
        }
        int totalPage= (totalCount%rows) == 0?  totalCount/rows:(totalCount/rows)+1;
        if(currentPage>=totalPage){
            currentPage=totalPage;
        }
        PageBean<User> pb = new PageBean<>();
        //设置参数
       pb.setCurrentPage(currentPage);
       pb.setRows(rows);
    //调用dao查询总记录
       pb.setTotalCount(totalCount);
       //调用dao查询list集合
        int star  = (currentPage-1)*rows;
        List<User> list = dao.findByPage(star,rows,condition);
        pb.setList(list);
         pb.setTotalPage(totalPage);

        return pb;
    }


}
