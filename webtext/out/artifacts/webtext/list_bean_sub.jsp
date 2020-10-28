<%--
  Created by IntelliJ IDEA.
  User: 晓风残月
  Date: 2020/10/26
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="cn.itcast.bean.UserDao" %>
<%@ page import="cn.itcast.domain.User" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%
    UserDao dao=new UserDao();
    List<User> users = dao.QuerrAll();
    //查找到List集合
    request.setAttribute("users",users);
    //存数据
    request.getRequestDispatcher("/list_bean_show.jsp").forward(request,response);
    //传数据
%>
</body>
</html>
