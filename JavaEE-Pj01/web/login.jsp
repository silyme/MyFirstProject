<%--
  Created by IntelliJ IDEA.
  User: 19235
  Date: 2024/9/26
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;

        }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;

        }
        .login-container h2 {
            margin-bottom: 20px;
        }

        .login-form div {
            margin-bottom: 15px;
        }

        .login-form label {
            display: block;
            margin-bottom: 5px;

        }
        .login-form input[type="text"],

        .login-form input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .login-form button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .login-form button:hover {
            background-color: #0056b3;
        }

        .login-form a {
            text-decoration: none;
            color: #007bff;
            font-size: 14px;
        }

        .login-form a:hover {
            text-decoration: underline;
        }

    </style>

</head>
<body>
<div class="login-container">
    <h2>登录</h2>
    <form action="login.do" method="post" >
        <div>
            <label for="username">用户名:</label>
            <input type="text" id="username" name="username" >
        </div>

        <div>
            <label for="password">密码:</label>
            <input type="password" id="password" name="password" >
        </div>

        <div>
            <input type="submit" style="margin-top: 10px" onclick="return check()" value="登录">
            <a href="register.jsp" style="margin-top: 10px">注册</a>
        </div>
    </form>
</div>

<script>
    function check(){
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        // 校验用户名
        if (username.trim() === '') { // 检查是否为空（包括只有空格的情况）
            alert('用户名不能为空！');
            return false;
        }
        if (username.length > 6) { // 检查是否超过6位
            alert('用户名不能超过6位！');
            return false;
        }
        // 校验密码
        if (password.trim() === '') { // 检查是否为空（包括只有空格的情况）
            alert('密码不能为空！');
            return false;
        }
        if (password.length > 6) { // 检查是否超过6位
            alert('密码不能超过6位！');
            return false;
        }
    }
</script>
</body>
</html>
