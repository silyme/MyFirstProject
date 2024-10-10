<%--
  Created by IntelliJ IDEA.
  User: 19235
  Date: 2024/9/26
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="register.do" method="post">
    用户名：<input type="text" name="username" id="username"> <br>
    密码: <input type="password" name="password" id="password"> <br>
    <input type="submit" value="提交" onclick="return check()">
</form>
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
