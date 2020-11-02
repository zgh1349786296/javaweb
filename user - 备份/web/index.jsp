<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- saved from url=(0081)http://localhost:63342/1/src/main/html/login.html?_ijt=j41crt7g3i1smf104q11ohib46 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>LOGIN</title>
  <style>
    html{
      height: 100%;
    }
    body{
      background:url("css/img/background.jpg") no-repeat center;
      background-size: 100%;
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
      width: 380px;
      height: 50px;
      margin-left: -200px;
      background-color: #4fa2a4;
      left: 50%;
      color: white;
      border-radius: 25px;
      font-size: larger;
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
</head>
<body>
<div class="ly_form">
  <h1>LOGIN</h1>
  <form oninput="" action="http://localhost:61203/bracelet/bracelet.main/webapp/login.html?_ijt=a7kv7podg44q1qqfvrdpurr2ib">
    <div class="ly_input2">
      <label>
        <input class="ly_input" type="text" name="stuid" id="t_stuid" placeholder="STUID">
      </label>
    </div>
    <br>
    <div class="ly_input2">
      <label>
        <input class="ly_input" type="password" name="password" id="t_password" placeholder="PASSWORD">
      </label>
    </div>
    <a><button class="style_btn1">用户登录</button></a>
    <a><button class="style_btn2" href="login.jsp">管理员登录</button></a>>
  </form>
  <div class="msg">
    没有用户？<a href="http://localhost:63342/1/src/main/html/login.html?_ijt=j41crt7g3i1smf104q11ohib46#">请注册</a>
  </div>
</div>
</body>
</html>