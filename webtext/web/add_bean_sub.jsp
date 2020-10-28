<%--
  Created by IntelliJ IDEA.
  User: 晓风残月
  Date: 2020/10/5
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息注册</title>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script language="JavaScript">
        function jump() {
            if(window.confirm("是否返回登录界面")) {
                window.history.back();
            }
        }
        function validate(form) {
            if(form.id.value==""){
                alert("id不能为空");
                return  false;
            }
            else if(form.name.value==""){
                alert("姓名不能为空");
                return  false;
            }
            else if(form.username.value==""){
                alert("用户名不能为空");
                return  false;
            }
            else if(form.password.value==""){
                alert("密码不能为空");
                return false;
            }
            else if(form.password.value.length<6){
                alert("密码不能少于6位");
                return false;
            }
            else if(form.repwd.value==""){
                alert("确认密码不能为空");
                form.repwd.focus();
                form.repwd.value = '';
                return false;
            }

            else if(form.password.value!=form.repwd.value){
                alert("两次密码不一致");
                return false;
            }
            else if(form.age.value==""){
                alert("年龄不能为空");
                return false;
            }
            else{
                return  true;
            }
        }
    </script>

</head>
<style>
    body{
        background:url("css/img/1.jpg") no-repeat center;
        background-size: 150%;
    }
    h1{
        font-family: "Microsoft soft";
        color: #1051db;
        size: 10px;
    }
    input{
        outline: none;
        border: 1px solid #cccccc;
        border-radius: 5px;
        padding: 5px;
        font-family: "Microsoft soft";

    }
    input:focus{
        border-color: #66afe9;
        outline: 0;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
    }
    body {
        font-family: sans-serif;
        front-size: 10px;
        color: #06020b;
    }
    button{
        padding: 10px;
    }


</style>
<body>
<!--分割线-->
<h1 align="center">注册信息</h1>
<p><center><font size="1" color="red">(*为必填内容)</font></center></p>
<form action="add_bean_show.jsp" method="post"  onsubmit="return validate(this);"> <!--信息表单!-->
    <p>
    <table  cellpadding="6" cellspacing="6" align="center">
        <!--        用户名-->
        <tr>
            <td align="right">*姓名：</td>
            <td><input type="text" name="name"  placeholder="请输入姓名" ></td>
        </tr>

        <!--        性别-->
        <tr><td align="right">性别:</td>
            <td>
                <input type="radio" name="sex" value="男" checked="checked">男
                <input type="radio" name="sex" value="女">女
            </td>
        </tr>
        <!--        年龄-->
        <tr><td align="right">年龄:</td>
            <td>
                <input type="number" name="age" placeholder="请输入年龄">
            </td>
        </tr>
        <!--        专业-->
        <tr><td align="right">专业:</td>
            <td>
                <select name="specialty">
                    <option value="计算机" name="specialty"  selected>计算机</option>
                    <option value="通信" name="specialty" >通信</option>
                    <option value="大数据"  name="specialty" >大数据</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">*用户名：</td>
            <td><input type="text" name="username" placeholder="请输入用户名" ></td>
        </tr>
        <!--        密码-->
        <tr>
            <td align="right">*密码：</td>
            <td><input type="password" name="password"  placeholder="请输入密码" ></td>
        </tr>
        <tr>
            <td align="right">*确认密码：</td>
            <td><input type="password" name="repwd"  placeholder="请再次输入密码" ></td>
        </tr>

        <!--        提交按钮-->
        <div align="center">
            <p>
    <td  align="right" >
        <input class="btn-info" type="submit"  value="提交" >
        <input class="btn-info" type="reset" value="重置" >
        <input  class="btn-info" type="button" value="返回" onclick="jump()" >
    </td>
    </p>

        </div>
        <div align="center">
    <p>已有账号?<a href="login.html">立即登录</a></p>
    </div>
    </table>
    </p>
</form>
</body>
</html>
