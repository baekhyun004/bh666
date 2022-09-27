<%--
  Created by IntelliJ IDEA.
  User: Baekhyun0506
  Date: 2021/12/1
  Time: 9:34
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
    <title>新增图书</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="./static/bootstrap.min.css">
</head>
<body style="background:url(./static/15.jpg)">
<style>
    .form-control{
        width: 200px;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <h2>图书信息修改</h2>
            <form action="/Book/update.do" method="post" style="margin-top:100px;left: 20px;">
                <div class="form-group">
                    <label for="bId">书籍编号</label>
                    <input type="text" class="form-control" name="bId" value="${book.bId}"/>
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="bName">书籍名称</label>
                    <input type="text" class="form-control" name="bName" value="${book.bName}"/>
                </div>
                <div class="form-group">
                    <label for="bAuthor">作者</label>
                    <input type="text" class="form-control" name="bAuthor" value="${book.bAuthor}" />
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="bNum">书籍总量</label>
                    <input type="text" class="form-control" name="bNum" value="${book.bNum}" />
                </div>
                <div class="form-group">
                    <label for="bLeft">剩余数量</label>
                    <input type="text" class="form-control" name="bLeft" value="${book.bLeft}"/>
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="bType">书籍类别</label>
                    <input type="text" class="form-control" name="bType" value="${book.bType}"/>
                </div>
                <button class="btn btn-default "><a href="/Book/book.do">返回</a></button>
                <button type="submit" class="btn btn-success pull-right">保存</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
