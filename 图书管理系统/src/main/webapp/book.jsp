<%--
  Created by IntelliJ IDEA.
  User: Baekhyun0506
  Date: 2021/11/30
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>图书信息管理</title>
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
                <li class="list-group-item"><a href="/User/success.do">主页</a></li>
                <li class="list-group-item active"><a href="/Book/book.do">图书信息管理</a></li>
                <li class="list-group-item"><a href="/BookType/booktype.do">图书类别管理</a></li>
                <li class="list-group-item"><a href="/Borrow/borrow.do">借阅信息管理</a></li>
                <li class="list-group-item"><a href="/Reader/reader.do">读者信息管理</a></li>
            </ul>
        </div>
<div class="col-md-8 col-md-offset-1">
    <h2>图书信息表</h2>
    <form action="/Book/selectbType.do" method="post">
        <div class="form-group">
            <button class="btn btn-success"><a href="/Book/insertpage.do">新增</a></button>
            <button class="btn btn-default pull-right"><a href="/Book/book.do">重置</a></button>
            <button type="submit" class="btn btn-primary pull-right">搜索</button>
            <input type="text" class="form-control pull-right" name="bType" style="width: 200px;"/>
        </div>
    </form>
    <table class="table table-responsive-md  table-hover table-bordered" style="font-size: 15px;text-align: center;">
        <thead>
        <tr class="info" style="width: 500px;text-align: center">
            <th>书籍编号</th>
            <th>书籍名称</th>
            <th>作者</th>
            <th>书籍总量</th>
            <th>剩余数量</th>
            <th>书籍类别</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${booklist}" var="item">
        <tr>
            <td>${item.bId}</td>
            <td>${item.bName}</td>
            <td>${item.bAuthor}</td>
            <td>${item.bNum}</td>
            <td>${item.bLeft}</td>
            <td>${item.bType}</td>
            <td>
                <button class="btn btn-primary"><a href="/Book/${item.bId}/updatepage.do">编辑</a></button>
                <button class="btn btn-danger"><a href="/Book/${item.bId}/delete.do">删除</a></button>
            </td>
            </c:forEach>
        </tbody>
    </table>
</div>
</div>
</div>
</body>
</html>
