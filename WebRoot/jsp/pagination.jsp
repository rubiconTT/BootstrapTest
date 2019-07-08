<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>pagination.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <style type="text/css">
        body {
         margin-top:50px;
         margin-left:20px;
      }
      
       @media (min-width:768px) {
        
           .container {
              width:750px;
           }
        }
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
 <p>简单分页</p>
 <div class="container">
   <ul class="pagination pagination-sm">
     <li><a href="#">&laquo</a></li>
     <li><a href="#">1</a></li>
     <li class="active"><a href="#">2<span class="sr-only">(current)</span></a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li class="disabled"><a href="#">5</a></li>
     <li><a href="#">6</a></li>
     <li><a href="#">&raquo</a></li>
   </ul>
   <br>
    <ul class="pagination">
     <li><a href="#">&laquo</a></li>
     <li><a href="#">1</a></li>
     <li class="active"><a href="#">2</a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li ><a href="#">5</a></li>
     <li><a href="#">6</a></li>
     <li><a href="#">&raquo</a></li>
   </ul>
   <br>
    <ul class="pagination pagination-lg pager">
     <li class="previous disabled"><a href="#">&larr; Older</a></li>
     <li><a href="#">&laquo</a></li>
     <li><a href="#">1</a></li>
     <li class="active"><a href="#">2<span class="sr-only">(current)</span></a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li class="disabled"><a href="#">5</a></li>
     <li><a href="#">6</a></li>
      <li class="next"><a href="#">Newer &rarr;</a></li>
     <li><a href="#">&raquo</a></li>
   </ul>
   <br><br>
   <p>bootstrap标签</p>
   <div class="row">
     <span class="label label-default">默认标签</span>
     <span class="label label-primary">主要标签</span>
     <span class="label label-success">成功标签</span>
     <span class="label label-danger">危险标签</span>
     <span class="label label-warning">警告标签</span>
     <span class="label label-info">信息标签</span>
   </div>
   <br><br>
   <p>bootstrap徽章</p>
   <div class="row">
     <a href="#">未读邮件<span class="badge">50</span></a>
   </div>
   <br><br>
   <p>使用bootstrap徽章激活导航栏状态</p>
   <div class="row">
     <ul class="nav nav-pills">
       <li class="active"><a href="#">首页<span class="badge">23</span></a></li>
       <li><a href="#">简介</a></li>
       <li><a href="#">业务<span class="badge">4</span></a></li>
       <li><a href="#">人才<span class="badge">15</span></a></li>
     </ul>
   </div>
   <br><br>
   <p>使用bootstrap徽章激活垂直导航栏状态</p>
   <div class="row" style="border: 1px solid green;">
      <ul class="nav nav-pills nav-stacked col-sm-2" style="border:1px solid red;">
        <li><a href="#">项目 1<span class="badge pull-right">25</span></a></li>
        <li><a href="#">项目 2<span class="badge">13</span></a></li>
        <li class="active"><a href="#">项目 3<span class="badge pull-right">8</span></a></li>
        <li><a href="#">项目 4<span class="badge">6</span></a></li>
      </ul>
      <div class="tab-content col-sm-10">
        <h4>项目基本信息</h4>
        <p>这是一个开源的项目</p>
      </div>
   </div>
   
 </div>
 <br><br>
   <p>使用bootstrap超大屏幕(带圆角)</p>
   <div class="container">
     <div class="jumbotron">
      <div class="page-header">
       <h4>这是一个超大屏幕的实例容器
         <small>子标题</small>
       </h4>
      </div>
       <p><a class="btn btn-primary btn-lg" role="button">学习更多</a></p>
     </div>
   </div>
   <br><br>
   <p>使用bootstrap超大屏幕(不带圆角)</p>
   <div class="jumbotron">
     <div class="container">
      <div class="page-header">
       <h4>这是一个超大屏幕的实例容器</h4>
       </div>
       <p><a class="btn btn-primary btn-lg" role="button">学习更多</a></p>
     </div>
   </div>
 </body>
 </html>