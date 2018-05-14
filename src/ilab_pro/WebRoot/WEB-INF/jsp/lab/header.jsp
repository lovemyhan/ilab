<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
      + path + "/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Header</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <style type="text/css">
      .navbar .nav>li .dropdown-menu {
        margin: 0;
      }

      .navbar .nav>li:hover .dropdown-menu {
        display: block;
      }
    </style>
  </head>

  <body>
    <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
          data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
          aria-expanded="false">
          <span class="sr-only">Toggle navigation</span> <span
            class="icon-bar"></span> <span class="icon-bar"></span> <span
            class="icon-bar"></span>
        </button>
        <img alt="" src="<%= path %>/static/css/images/tyut.png" style="margin-left: 20px;" />
      </div>
  
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse"
        id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-left">
          <li class="active" style="padding-left: 80px;">
            <a href="<%= path %>/lab/toContent">首页</a>
          </li>
          <li><a href="#">盘点管理</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">出入库管理
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">Separated link</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">One more separated link</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle"
            data-toggle="dropdown" role="button" aria-haspopup="true"
            aria-expanded="false">记录查询 <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="<%= path %>/record/buy-record">购置记录</a></li>
              <li><a href="#">维修记录</a></li>
              <li><a href="#">报废记录</a></li>
              <li><a href="#">入库记录</a></li>
            </ul>
          </li>
          <li><a href="<%= path %>/approvement/m/buy-record">审批管理 </a></li>
        </ul>
  
        <div class="navbar-form navbar-right">
          <c:choose>
            <c:when test="${USER != null}">
              <a class="btn btn-danger" type="button" href="<%= path %>/user/logout">退出</a>
            </c:when>
            <c:otherwise>
              <button class="btn btn-success" type="button">登录</button>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
    </div>
    </nav>
  </body>
</html>