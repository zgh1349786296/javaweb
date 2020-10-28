package cn.itcast.dao.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.util.JDBCUtils;

import cn.itcast.domain.User;
import cn.itcast.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserDaoImpl implements UserDao {

    private  JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    //​ JdbcTemplate是Spring对JDBC的封装
    //execute：可以执行所有SQL语句，一般用于执行DDL语句。
    //update：用于执行INSERT、UPDATE、DELETE等DML语句。
    //queryXxx：用于DQL数据查询语句。
    @Override
    public List<User> findAll(){
        String sql = "select * from student";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
    }
    //使用JdbcTemplate对象的query方法，并传入BeanPropertyRowMapper对象
    //BeanPropertyRowMapper 字段映射，将结果集映射的user的对应属性。
    //<User>(User.class) 设置泛型，

    @Override
    public void add(User user) {
        String sql="insert into student(name,sex,age,specialty,username,password) values(?,?,?,?,?,?)";
        template.update(sql,user.getName(),user.getSex(),user.getAge(),user.getSpecialty(),user.getUsername(),user.getPassword());
    }
    @Override
    public User findManagerByUsernameAndPassword(String username, String password) {
        try {
            String sql = "select * from manager where username = ? and password = ?";
            User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username, password);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public void delete(int id) {
         String sql="delete from student where id=?";
         template.update(sql,id);
    }

    @Override
    public void update(User user) {
        String sql="update student set name = ?,sex = ? ,age = ?  , specialty = ? where id = ?";
        template.update(sql,user.getName(),user.getSex(),user.getAge(),user.getSpecialty(),user.getId());
    }

    @Override
    public User finduserbyid(int id) {
        String sql="select * from student where id=?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class),id);
    }
    //queryForObject执行查询语句，返回User 型对象
    //BeanPropertyRowMapper 字段映射，将结果集映射的user的对应属性。
    //<User>(User.class) 设置泛型，


}
