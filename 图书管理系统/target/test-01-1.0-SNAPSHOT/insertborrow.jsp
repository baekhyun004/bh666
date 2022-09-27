<%--
  Created by IntelliJ IDEA.
  User: Baekhyun0506
  Date: 2021/12/2
  Time: 10:47
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
    <title>新增借阅</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="./static/bootstrap.min.css">
</head>
<body style="background: url(./static/15.jpg)">
<style>
    .form-control{
        width: 200px;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h2>新增借阅信息</h2>
            <form action="/Borrow/insertborrow.do" method="post" style="margin-top:100px;left: 20px;">
                <div class="form-group">
                    <label for="bId">书籍编号</label>
                    <input type="text" class="form-control" name="bId" />
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="sId">学生编号</label>
                    <input type="text" class="form-control" name="sId" />
                </div>
                <div class="form-group">
                    <label for="bTime">借阅时间</label>
                    <input type="date" class="form-control" name="bTime" />
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="rTime">归还时间</label>
                    <input type="date" class="form-control" name="rTime" />
                </div>
                <div class="form-group">
                    <label for="comment">状态</label>
                    <input type="text" class="form-control" name="comment" />
                </div>
                <button class="btn btn-default "><a href="/Borrow/borrow.do">返回</a></button>
                <button type="submit" class="btn btn-success pull-right">保存</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
