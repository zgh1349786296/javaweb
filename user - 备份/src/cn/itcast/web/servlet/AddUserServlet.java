package cn.itcast.web.servlet;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import cn.itcast.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;
import sun.invoke.empty.Empty;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addUserServlet")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置编码
        request.setCharacterEncoding("utf-8");
        //2.获取参数
        Map<String, String[]> map = request.getParameterMap();
        //3.封装对象
        User user = new User();
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        if(user.getUsername()==null||user.getPassword()==null||user.getAddress()==null|| user.getEmail()==null||user.getGender()==null||user.getQq()==null||user.getName()==null)
        {

            request.setAttribute("login_msg","注册信息不能为空！");
            //跳转登录页面
            request.getRequestDispatcher("/add.jsp").forward(request,response);
        }
        else{
            //4.调用Service保存
            UserService service = new UserServiceImpl();
            service.addUser(user);

            //5.跳转到userListServlet
            response.sendRedirect(request.getContextPath()+"/mlogin.jsp");

        }



    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
