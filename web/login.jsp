<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<%String path=request.getContextPath(); %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>通讯录管理员登录</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <div class="col-md-8 col-md-offset-2">
<%--        <h1 style="text-align: center; font-size: 45px" >欢迎登录'CBH'的通讯录管理系统</h1>--%>
    <h1 style="text-align: center; font-size: 45px" >欢迎登录通讯录系统</h1>

<div class="container" style="width: 400px;padding-top:15%;">
    <h3 style="text-align: center;">管理员登录</h3>
    <form action="<%=path%>/login" method="post">
        <div class="form-group">
            <label for="account">用户名：</label>
            <input type="text" name="account" class="form-control" id="account" placeholder="请输入用户名"/>
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码"/>
        </div>
        <div class="form-group" style="text-align: center;">
            <input class="btn btn btn-primary" type="submit" value="登录">
            <a class="btn btn-primary" href="<%=path%>/register">注册</a>
        </div>
    </form>
</div>
    </div>
</div>
</body>
</html>