<%@page isELIgnored="false" contentType="text/html; UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>前台首页</title>
    <link rel="stylesheet" href="../static/css/bootstrap.min.css"/>
    <script src="../static/js/jquery-3.5.1.min.js"></script>
    <script>
        $(function (){

            //1.点击搜索按钮执行
            $("#searchBtn").click(function (){

                //清空数据
                $("#rowDiv").empty();

                //2.获取用户输入的搜索内容
                var content = $("#content").val();

                //3.发送ajax请求到后台搜索
                $.post("${path}/menu/search",{"content":content},function (menuList){

                    $.each(menuList,function (index,menu){

                        $("#rowDiv").append(
                            "<div class='col-sm-3'>" +
                                "<div class='thumbnail'>" +
                                    "<img src='../static/imgs/"+menu.photo+"' class='img-circle' style='width: 200px;height: 120px;'>" +
                                    "<div class='caption'>" +
                                        "<h3 class='text-center'>"+menu.name+"</h3>" +
                                        "<p>"+menu.digest+"</p>" +
                                        "<p><a href='detail.html' class='btn btn-danger btn-block' role='button'>查看详细</a></p>" +
                                    "</div>" +
                                "</div>" +
                            "</div>")
                    })
                })
            })
        })
    </script>
</head>
<body>

<div class="container-fluid">

    <!--搜索框-->
    <div class="row" style="margin-top: 20px;">
        <div class="col-sm-12" style="text-align: center">
            <form class="form-inline">
                <div class="form-group" style="width: 600px;">
                    <input id="content" type="text" style="width: 600px;" class="form-control" placeholder="请输入查询条件">
                </div>
                <button id="searchBtn" type="button" class="btn btn-primary">搜索</button>
            </form>
        </div>
    </div>

    <h1 class="page-header">搜索结果</h1>
    <!--搜索列表-->
    <div class="row" style="margin-top: 20px" id="rowDiv">



        <%--<div class="col-sm-3">
            <div class="thumbnail">
                <img src="../static/imgs/6.jpg" class="img-circle" style="width: 200px;height: 120px;">
                <div class="caption">
                    <h3 class="text-center">西红柿炒蛋</h3>
                    <p>西红柿炒鸡蛋，又名番茄炒蛋，是许多百姓家庭中...</p>
                    <p><a href="detail.html" class="btn btn-danger btn-block" role="button">查看详细</a></p>
                </div>
            </div>
        </div>--%>

    </div>

    <!--分页工具栏-->
    <nav aria-label="Page navigation">
        <ul class="pagination pull-right">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li class="active"><a href="#" >1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>


</div>
</body>
</html>