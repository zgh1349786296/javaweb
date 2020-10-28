<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!-- 1. 导入CSS的全局样式 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- 2. jQuery导入，建议使用1.9以上的版本 -->
<script src="js/jquery-2.1.0.min.js"></script>
<!-- 3. 导入bootstrap的js文件 -->
<script src="js/bootstrap.min.js"></script>
<head>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>信息展示</title>
    <style>
        h1{
            size: 10px;
            color: #1c8adb;
            font-family: 楷体;
            align-content: center;
        }
        h2{
            size:5px;
          color: #0b060a;
            font-family: 宋体;
            align-content: center;
        }
        body{
            background:url("css/img/1.jpg") no-repeat center;
            background-size: 150%;
        }
    </style>
</head>
<body>
<center><h1>用户信息：</h1><center>
    <form action="/update_bean_sub.jsp" method="post">
<div class="container">
<table align="center">
    <input type="hidden" name="id" value="${user.id}">
    <div class="form-group">
        <h2>姓名：</h2>
        <input type="text" class="form-control"  name="name" value="${user.name}"/>
    </div>
    <div class="form-group">
        <h2>性别：</h2>
        <c:if test="${user.sex=='男'}">
            <input type="radio" name="sex" value="男" checked />男
            <input type="radio" name="sex" value="女"  />女
        </c:if>
        <c:if test="${user.sex=='女'}">
            <input type="radio" name="sex" value="男" />男
            <input type="radio" name="sex" value="女" checked  />女
        </c:if>
    </div>

    <div class="form-group">
        <h2>年龄：</h2>
        <input type="text" class="form-control"  name="age" value="${user.age}">
    </div>
    <div class="form-group">
        <h2>专业：</h2>
        <input type="text" class="form-control"  name="specialty" value="${user.specialty}"/>
    </div>
</table>
    <div class="form-group" style="text-align: center">
        <input class="btn btn-primary" type="submit" value="提交" />
        <input class="btn btn-default" type="reset" value="重置" />
        <input class="btn btn-default" type="button" value="返回"/>
    </div>
</div>
    </form>
</body>
</html>
