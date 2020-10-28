<%--
  Created by IntelliJ IDEA.
  User: 晓风残月
  Date: 2020/10/11
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

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
    <title>新生注册</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <script language="JavaScript">

        function validate(form) {

             if(form.Username.value==""){
                alert("用户名不能为空");
                return  false;
            }
            else if(form.Password.value==""){
                alert("密码不能为空");
                return false;
            }
            else if(form.Password.value.length<6){
                alert("密码不能少于6位");
                return false;
            }

            else{
                return  true;
            }
        }
    </script>

    <style>
        body{
            background:url("css/img/1.jpg") no-repeat center;
            background-size: 150%;
        }
        h1{
            position: absolute;
            left: 50%;
            width: 200px;
            height: 50px;
            margin-left: -100px;
            top: 16%;
            color: #1c8adb;
            font-size: 30px;
            text-align: center;
            line-height: 50px;
            letter-spacing: 4px;
        }
        .ly_form{
            width: 150px;
            height: 200px;
            box-shadow: 0 0 3px 0 rgba(0,0,0,0.3);
            background: #fff;
            padding: 150px;
            margin: auto;
            margin-top: 5%;
            text-align: center;
            border-radius: 25px;
        }
        .ly_input{
            position: absolute;
            border: none;
            width: 250px;
            height: 50px;
            margin-left: -130px;
            background-color: #4fa2a4;
            left: 50%;
            color: white;
            border-radius: 50px;
            font-size: large;
            padding-left: 20px;
        }
        .ly_input2{
            height: 70px;
        }
        .style_btn1{
            text-decoration: none;
            width: 155px;
            height: 50px;
            position: absolute;
            margin-left: -175px;
            margin-top: 25px;
            text-align: center;
            line-height: 50px;
            color: white;
            border-radius: 25px;
            background-color: #69afbb;
            font-size: 25px;
            border: #69afbb;
        }
        .style_btn2{
            text-decoration: none;
            width: 155px;
            height: 50px;
            position: absolute;
            margin-left: 15px;
            margin-top: 25px;
            text-align: center;
            line-height: 50px;
            color: white;
            border-radius: 25px;
            background-color: #69afbb;
            font-size: 25px;
            border: #69afbb;
        }
        .msg{
            text-align: center;
            margin-top: 115px;
        }
    </style>
    <title>Title</title>
</head>
<body>
<div class="ly_form" >
    <h1>登录</h1>
    <table>
        <form action="${pageContext.request.contextPath}/loginServlet" method="post" >
            <div class="ly_input2">
                <label>
                    <input class="ly_input" type="text" name="username" placeholder="学号"></label>
                </label>
            </div>
            <br>
            <div class="ly_input2">
                <label>
                    <input class="ly_input" type="password" name="password" placeholder="密码"></label>
                </label>
            </div>
            <input type="submit" class="style_btn1" value="登录">
            <button class="style_btn2" onclick="jump()" >管理员登录</button>
        </form>
        <p>
        </p>

    </table>


</div>
<div class="msg">
    没有用户？<a href="adds.jsp">请注册</a>
</div>
<div  role="alert" style="text-align: center">
    <button type="button" class="close" data-dismiss="alert" >
        <span>&times;</span>
    </button>
    <strong>${login_msg}</strong>
</div>
</body>
</html>
