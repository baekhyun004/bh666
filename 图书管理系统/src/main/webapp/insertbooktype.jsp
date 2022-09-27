<%--
  Created by IntelliJ IDEA.
  User: Baekhyun0506
  Date: 2021/12/2
  Time: 9:27
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
    <title>新增图书类别</title>
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
            <h2>新增图书类别</h2>
            <form action="/BookType/insertbooktype.do" method="post" style="margin-top:100px;left: 20px;">
                <div class="form-group">
                    <label for="bType">图书类别名称</label>
                    <input type="text" class="form-control" name="bType" />
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="tNum">总数量</label>
                    <input type="text" class="form-control" name="tNum" />
                </div>
                <button class="btn btn-default "><a href="/BookType/booktype.do">返回</a></button>
                <button type="submit" class="btn btn-success pull-right">保存</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
