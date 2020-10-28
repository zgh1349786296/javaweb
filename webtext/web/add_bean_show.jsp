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
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%
    UserDao dao=new UserDao();
    request.setCharacterEncoding("utf-8");
    Map<String,String[]> map =request.getParameterMap();
    //设置map 获得输入信息
    User user = new User();
    try {
        BeanUtils.populate(user,map);  //BeanUtils.populate方法，输入信息映射相应属性
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    } catch (InvocationTargetException e) {
        e.printStackTrace();
    }
    dao.adduser(user);
    response.sendRedirect(request.getContextPath()+"/list_bean_sub.jsp");
    //不用传递参数
%>
</body>
</html>
