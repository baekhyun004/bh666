<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Baekhyun0506
  Date: 2021/11/30
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>登陆成功</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="./static/bootstrap.min.css">
</head>
<body style="background: url(./static/15.jpg)">
<style>
    li{
        list-style: none;
    }
    a{
        color: black;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-3 text-center" style="font-size: 20px; margin-top: 70px;">
            <ul class="list-group">
                <li class="list-group-item active">主页</li>
                <li class="list-group-item"><a href="/Book/book.do">图书信息管理</a></li>
                <li class="list-group-item"><a href="/BookType/booktype.do">图书类别管理</a></li>
                <li class="list-group-item"><a href="/Borrow/borrow.do">借阅信息管理</a></li>
                <li class="list-group-item"><a href="/Reader/reader.do">读者信息管理</a></li>
            </ul>
        </div>
        <div class="col-md-6 col-md-offset-1">
            <h2 style="font-size: 20px">欢迎来到图书管理系统！</h2>
    </div>
</div>

</body>
</html>
