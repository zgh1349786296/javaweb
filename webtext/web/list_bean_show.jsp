<%@ page import="javax.swing.text.Document" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户信息管理系统</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <script>
        function deleteUser(id) {
            if(confirm("您确定删除么")){
                location.href="${pageContext.request.contextPath}/delete_bean_show.jsp?id="+id;
            }
            else{
                location.href="${pageContext.request.contextPath}/userListServlet"
            }

        }
    </script>

    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">用户信息列表</h3>
    <div  style="float: left;margin:5px"  method="post">
        <form action="find_bean_idname.jsp" method="post" class="form-inline">
            <div class="form-group">
                <label for="id">id:</label>
                <input type="text" name="id"  class="form-control"  id="id" >
            </div>

            <div class="form-group">
                <label for="name">姓名:</label>
                <input type="text" name="name"  class="form-control" id="name" >
            </div>

            <button type="submit" class="btn btn-default">查询</button>
        </form>
    </div>
    <a class="btn btn-primary" href="add_bean_sub.jsp">添加联系人</a>

    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <th> <input type="checkbox" id ="firstCb"></th>
            <th>编号</th>
            <th>id</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>专业</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${0000000000}" var="user" varStatus="s">
            <tr>
                <td> <input type="checkbox" name="uid" value="${user.id}"></td>
                <td>${s.count}</td>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.sex}</td>
                <td>${user.age}</td>
                <td>${user.specialty}</td>
                <td><a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/findUserByIdServlet?id=${user.id}">修改</a>
                    <a class="btn btn-default btn-sm" href="javascript:deleteUser(${user.id});">删除</a></td>
            </tr>
        </c:forEach>

    </tr>

    </table>
</div>
</body>
</html>
