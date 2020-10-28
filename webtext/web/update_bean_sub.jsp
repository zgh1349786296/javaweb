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
<%@ page import="java.util.Map" %>
<%@ page import="org.apache.commons.beanutils.BeanUtils" %>
<%@ page import="java.lang.reflect.InvocationTargetException" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf_8");
    //定义编码
    Map<String,String[]> map =request.getParameterMap();
    //得到字符集合
    User user = new User();
    try{
        BeanUtils.populate(user,map);
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    } catch (InvocationTargetException e) {
        e.printStackTrace();
    }
    UserDao dao=new UserDao();
    dao.update(user);
    response.sendRedirect(request.getContextPath()+"/list_bean_sub.jsp");
%>
</body>
</html>
