package cn.itcast.bean;

import cn.itcast.domain.User;
import cn.itcast.util.JDBCUtils;
import com.alibaba.druid.util.JdbcUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    public List<User> QuerrAll() throws  Exception{
        //Connection con= JDBCUtils.getConnection();

        String sql= "select * from student";
        List<User> users =template.query(sql,new BeanPropertyRowMapper<User>(User.class));
        //创建user集合，bean映射相应字段映射，将结果集映射的user的对应属性
        //temp执行语句并返回User集合
        //PreparedStatement ps=con.prepareStatement(sql);
        //ResultSet rs=ps.executeQuery();
        /*while (rs.next()){
            User user =new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setSex(rs.getString("sex"));
            user.setAge(rs.getInt("age"));
            user.setSpecialty(rs.getString("specialty"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            users.add(user);
        }*/0
        return users;
    }

    public User login(String username,String password){
        try{
            String sql="select * from manager where username = ? and password = ?";
            User user = template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),username,password);
            //查询数据库，映射到user 返回一个user 对象，
            return user;
            //查找manager表单含该用户否
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }

    }

    public void adduser(User user){
        String sql="insert into student(name,sex,age,specialty,username,password) values(?,?,?,?,?,?)";
        template.update(sql,user.getName(),user.getSex(),user.getAge(),user.getSpecialty(),user.getUsername(),user.getPassword());
        //添加语句
    }

    public void deleteuser(int id){ //删除
        String sql="delete from student where id=?";
        template.update(sql,id);
    }

    public User finduserbyid(int id){  //按id查找
        String sql="selct * from student where id=?";
        User user=new User();
        user = template.queryForObject(sql,new BeanPropertyRowMapper<User>(User.class),id);
        return user;  //返回一个user
    }

    public void update(User user){
        String sql="update from student set name = ?,sex = ? ,age = ?  , specialty = ? where id = ?";
        template.update(sql,user.getName(),user.getSex(),user.getAge(),user.getSpecialty(),user.getId());
    }
    public List<User> findbyidname(int id,String name){
            try{
                String sql="select * from manager where id = ? and name = ?";
                List<User> users = template.query(sql,new BeanPropertyRowMapper<User>(User.class),id,name);
                return users;
            }catch (DataAccessException e) {
                e.printStackTrace();
                return null;
            }
            }


}
