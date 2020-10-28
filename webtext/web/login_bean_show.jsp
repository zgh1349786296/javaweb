<%--
  Created by IntelliJ IDEA.
  User: 晓风残月
  Date: 2020/10/27
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.itcast.bean.UserDao" import="cn.itcast.domain.User"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // response.sendRedirect 新建一个request
    //request.getRequestDispatcher 前后界面公用一个request
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    UserDao dao=new UserDao();
    User loginer=dao.login(username,password);
    if(loginer!=null){
        //登录成功
        response.sendRedirect(request.getContextPath()+"/list_bean_sub.jsp");

    }
    else{
        request.setAttribute("login_msg","用户名或密码错误！");
        //跳转登录页面
        request.getRequestDispatcher("/login_bean_sub.jsp").forward(request,response);
    }
%>
</body>
</html>
