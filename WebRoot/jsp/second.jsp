<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>second.jsp</title>
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
    <p><span style="color:red;">列表组件</span></p>
    <div class="container">
      <ul class="list-group">
        <li class="list-group-item">免费域名注册</li>
        <li class="list-group-item">
                         免费空间托管
            <button class="btn btn-primary btn-group dropdown-toggle pull-right " data-toggle="dropdown">
                                 选择<span class="caret"></span></button>
             <ul class="dropdown-menu pull-right">
               <li><a href="#">1M</a></li>
               <li><a href="#">1G</a></li>
               <li><a href="#">1T</a></li>
             </ul>                                 
          </li>
        <li class="list-group-item">7*24h服务</li>
        <li class="list-group-item active">
                    更人性化的管理
          <span class="badge">新</span>           
         </li>
        <li class="list-group-item">每年更新成本</li>
      </ul>
    </div>
    <br><br>
    <p><span style="color:red;">列表组件(带标题)</span></p>
    <div class="container">
      <div class="list-group">
        <a href="#" class="list-group-item active">程序员
        <h5>
                  入门网站包
        </h5>
        </a>
        <a href="#" class="list-group-item ">
                  工程师<br>
          <b class="list-group-item-text">您将通过网页进行免费域名注册。</b></a>
        <a href="#" class="list-group-item">高级工程师</a>
      </div>
      <div class="list-group">
        <a class="list-group-item">前台</a>
        <a class="list-group-item">美工</a>
      </div>
    </div>
    <br><br>
    <p><span style="color:red;">面板</span></p>
    <div class="container">
      <div class="row">
	      <div class="panel panel-default">
	        <div class="panel-heading">
	                           添加面板标题的方式之一
	        </div>
	        <div class="panel-body">这是一个基本的面板</div>
	      </div>
      </div>
       <div class="row">
	      <div class="panel panel-info">
	        <div class="panel-heading">
	           <h5 class="panel-title" >添加面板标题的方式之二</h5>
	        </div>
	        <div class="panel-body">这是一个基本的面板</div>
	      </div>
      </div>
       <div class="row">
	      <div class="panel panel-success">
	        <div class="panel-heading">
	           <h6 class="panel-title" >含标题面板</h6>
	        </div>
	        <div class="panel-body">这是一个基本的面板</div>
	        <div class="panel-footer">面板注脚</div>
	      </div>
      </div>
      <div class="row">
        <div class="panel panel-danger">
          <div class="panel-heading">
            <h5 class="panel-title">带有表格的面板</h5></div>
        </div>
        <div class="panel-body">
          <h6>这是一个基本风格的面板</h6>
         </div>
           <table class="table">
             <thead>
               <tr>
                 <td>产品</td>
                 <td>数量</td>
                 <td>价格</td>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td>苹果</td>
                 <td>130</td>
                 <td>4.83</td>
               </tr>
               <tr>
                 <td>香蕉</td>
                 <td>200</td>
                 <td>3.55</td>
               </tr>
               <tr>
                 <td>葡萄</td>
                 <td>200</td>
                 <td>7.55</td>
               </tr>
             </tbody>
           </table>
      </div>
      <div class="row">
        <div class="panel panel-danger">
          <div class="panel-heading">
            <h5 class="panel-title">带有表格的面板</h5></div>
        </div>
        <div class="panel-body">
          <h6>这是一个基本风格的面板</h6>
         </div>
           <table class="table">
               <th>产品</th>
               <th>数量</th>
               <th>价格</th>
               <tr>
                 <td>苹果</td>
                 <td>130</td>
                 <td>4.83</td>
               </tr>
               <tr>
                 <td>香蕉</td>
                 <td>200</td>
                 <td>3.55</td>
               </tr>
               <tr>
                 <td>葡萄</td>
                 <td>200</td>
                 <td>7.55</td>
               </tr>
           </table>
      </div>
      <div class="row">
        <div class="panel panel-danger">
          <div class="panel-heading">
            <h5 class="panel-title">带有列表的面板</h5></div>
        </div>
        <div class="panel-body">
          <h6>这是一个基本风格的面板</h6>
         </div>
          <ul class="list-group">
            <li class="list-group-item"><a href="#">列表组件1</a></li>
            <li class="list-group-item"><a href="#">列表组件2</a></li>
            <li class="list-group-item"><a href="#">列表组件3</a></li>
            <li class="list-group-item"><a href="#">列表组件4</a></li>
          </ul>
      </div>
    </div>
   <br><br>
    <p><span style="color:red;">well容器</span></p> 
    <div class="well well-lg">
          您好，您现在大的well容器中
      <div class="row">
        <div class="input-group">
          <input type="button" class="btn btn-primary" name="well按钮" value="well按钮">
          <input type="button" class="btn btn-info" name="well按钮" value="well按钮">
          <input type="text"  placeholder="well容器中的文本框">
        </div>
      </div>
    </div>
    <br><br>
    <div class="well well-sm">
          您好，您现在小的well容器中
    </div>
 </body>
 </html>