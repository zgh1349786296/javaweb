<%--
  Created by IntelliJ IDEA.
  User: 晓风残月
  Date: 2020/10/26
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="cn.itcast.bean.UserDao" %>
<%@ page import="cn.itcast.domain.User" %>
<%@ page import="org.apache.commons.beanutils.BeanUtils" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.lang.reflect.InvocationTargetException" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%
    UserDao dao=new UserDao();
    request.setCharacterEncoding("utf-8");
    //定义字符集
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    //得到查询信息
    List<User> users=dao.findbyidname(id,name);
    //得到查询结果集合
    request.setAttribute("users",users);
    //传递参数
    request.getRequestDispatcher("/list_bean_show.jsp");
    //传值跳转
%>
</body>
</html>
