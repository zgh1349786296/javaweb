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

    int id=Integer.parseInt(request.getParameter("id")) ;
    //转换传递的id值
    dao.deleteuser(id);
    response.sendRedirect(request.getContextPath()+"/list_bean_sub.jsp");
    //不用传递参数
%>
</body>
</html>
