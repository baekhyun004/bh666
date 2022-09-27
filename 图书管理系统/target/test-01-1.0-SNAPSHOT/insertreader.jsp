<%--
  Created by IntelliJ IDEA.
  User: Baekhyun0506
  Date: 2021/12/2
  Time: 15:16
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
    <title>新增读者</title>
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
            <h2>新增读者信息</h2>
            <form action="/Reader/insertreader.do" method="post" style="margin-top:100px;left: 20px;">
                <div class="form-group">
                    <label for="sId">学生编号</label>
                    <input type="text" class="form-control" name="sId" />
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="sName">姓名</label>
                    <input type="text" class="form-control" name="sName" />
                </div>
                <div class="form-group">
                    <label for="sSex">性别</label>
                    <input type="text" class="form-control" name="sSex" />
                </div>
                <div class="form-group" style="margin-left: 220px;margin-top: -74px;">
                    <label for="sClass">专业</label>
                    <input type="text" class="form-control" name="sClass" />
                </div>
                <div class="form-group">
                    <label for="sBnum">借阅数量</label>
                    <input type="text" class="form-control" name="sBnum" />
                </div>
                <button class="btn btn-default "><a href="/Reader/reader.do">返回</a></button>
                <button type="submit" class="btn btn-success pull-right">保存</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
