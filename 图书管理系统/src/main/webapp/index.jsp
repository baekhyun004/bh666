<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>欢迎登陆</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="./static/bootstrap.min.css">
</head>
<body>
<style>
    body{
        background: url("/static/2.jpg");
    }
</style>
<form action="/User/login.do" method="post" style="margin-left:500px;margin-top:200px;">
    <div class="form-group">
        <label for="user" stype="display:inline;">账户：</label>
        <input type="text" class="form-control" name="username" style="display:inline;width:200px;"autocomplete="off" />
    </div>
    <div class="form-group">
        <label for="password" style="display:inline;">密码：</label>
        <input type="password" class="form-control" name="password" style="display:inline;width:200px;"autocomplete="off" />
    </div>
    <button type="submit" class="btn btn-success" style="width: 120px;">登录</button>
    <button class="btn btn-default" style="width: 120px;"><a href="/User/addUserpage.do">注册</a></button>
</form>
<p>${data}</p>
</body>
</html>
