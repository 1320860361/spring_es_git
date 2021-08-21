<%@page isELIgnored="false" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>后台列表页面</title>
        <link rel="stylesheet" href="../static/css/bootstrap.min.css"/>
        <script src="../static/js/jquery-3.5.1.min.js"></script>
    </head>
    <body>

    <!--功能按钮-->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">后台食谱管理系统</a>
            </div>
            <!--功能按钮 -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form class="navbar-form navbar-left">
                    <button type="button" class="btn btn-danger">清空ES索引库</button>
                    <button type="button" class="btn btn-info">基于mysql数据重建索引</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="text-info">小陈</span></a></li>
                    <li><a href="#">退出系统</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <a href="add.html" class="btn btn-info">添加</a>
            </div>
        </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-sm-12">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>菜谱名称</th>
                        <th>图片</th>
                        <th>录入时间</th>
                        <th>录入人</th>
                        <th>关于摘要</th>
                        <th>步骤摘要</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <C:forEach items="${menus}" var="menus">
                    <tr>
                        <th scope="row">${menus.id}</th>
                        <td>${menus.name}</td>
                        <td><img style="width: 300px;height: 220px;" src="${path}/static/imgs/${menus.photo}" class="img-thumbnail" alt=""></td>
                        <td>${menus.createDate}</td>
                        <td>${menus.createPerson}</td>
                        <td>${menus.digest}</td>
                        <td>${menus.step}</td>
                        <td><a href="" class="btn btn-danger">删除</a>&nbsp;&nbsp;<a href="update.html" class="btn btn-info">修改</a></td>
                    </tr>
                    </C:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!--热词处理-->

    </div>


    </body>
</html>