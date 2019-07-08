<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
   <head>
      <title>north.jsp</title>
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
        
        #mycontainer {
          position: relative;
           overflow: auto;
           height:300px;
        }
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </head>
   <body>
         <div class="container">
         <p> 标签式的导航菜单</p>
         <ul class="nav nav-tabs" role="tablist">
           <li class="active"><a  data-toggle="tab" href="#home1">Home</a></li>
           <li><a data-toggle="tab" href="#java1">Java</a></li>
           <li><a data-toggle="tab" href="#c1">C</a></li>
           <li><a data-toggle="tab" href="#c3">C++</a></li>
           <li class="dropdown"><!--下拉弹出菜单  -->
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">
              	C#<span class="caret"></span></a>
              <ul class="dropdown-menu btn-xs-4">
                <li><a data-tobble="tab" href="#java1">choice 1</a></li>
                <li><a data-tobble="tab" href="#c1">choice 2</a></li>
                <li><a data-tobble="tab" href="#c3">choice 3</a></li>
                <li><a data-tobble="tab" href="#net1">choice 4</a></li>
              </ul>
            </li>
           <li><a data-toggle="tab" href="#python1">Python</a></li>
         </ul> 
         <div class="tab-content">
          <div id="home1" class="tab-pane fade in active ">
              <h4>首页</h4>
              <p>学的不仅是技术，更是梦想</p>
            </div>
            <div id="java1" class="tab-pane fade  ">
              <h4>Java</h4>
              <p>一心只想学Java</p>
            </div>
            <div id="c1" class="tab-pane fade">
              <h4>C语言</h4>
              <p>这是根本</p>
            </div>
            <div id="c3" class="tab-pane fade ">
              <h4>C++</h4>
              <p>通往编程高手之路</p>
            </div>
            <div id="net1" class="tab-pane fade">
              <h4>.Net</h4>
              <p>另一个对立面</p>
            </div>
            <div id="python1" class="tab-pane fade ">
              <h4>Python</h4>
              <p>灵活，这个可以有</p>
            </div>
         </div>
         </div> 
         <br>
         <br>
         <div class="container">
         <p> 胶囊式的导航菜单</p>
         <ul class="nav nav-pills">
           <li class="active" ><a href="#home" data-toggle="pill">Home</a></li>
           <li><a href="#java" data-toggle="pill">Java</a></li>
           <li><a href="#c" data-toggle="pill">C</a></li>
           <li><a href="#c2" data-toggle="pill">C++</a></li>
           <li><a href="#net" data-toggle="pill">.Net</a></li>
           <li><a href="#python" data-toggle="pill">Python</a></li>
         </ul>
         <div class="tab-content">
            <div id="home" class="tab-pane fade in active ">
              <h4>首页</h4>
              <p>学的不仅是技术，更是梦想</p>
            </div>
            <div id="java" class="tab-pane fade  ">
              <h4>Java</h4>
              <p>一心只想学Java</p>
            </div>
            <div id="c" class="tab-pane fade">
              <h4>C语言</h4>
              <p>这是根本</p>
            </div>
            <div id="c2" class="tab-pane fade ">
              <h4>C++</h4>
              <p>通往编程高手之路</p>
            </div>
            <div id="net" class="tab-pane fade">
              <h4>.Net</h4>
              <p>另一个对立面</p>
            </div>
            <div id="python" class="tab-pane fade ">
              <h4>Python</h4>
              <p>灵活，这个可以有</p>
            </div>
         </div>
         </div>  
         <br>
         <br>
         <div class="container">
         <p> 垂直胶囊式的导航菜单</p>
         <div class="row">
         <ul id="myScrollspy" class="nav nav-pills nav-stacked  col-sm-2">
           <li class="active"><a data-toggle="pill" href="#j">Home</a></li>
           <li><a data-toggle="pill" href="#a">Java</a></li>
           <li><a data-toggle="pill" href="#cl">C</a></li>
           <li><a data-toggle="pill" href="#s">C++</a></li>
           <li><a data-toggle="pill" href="#f">.Net</a></li>
           <li><a data-toggle="pill" href="#w">Html</a></li>
         </ul> 
         
         <div id="mycontainer" class="tab-content col-sm-10" 
         data-spy="scroll" data-target="#myScrollspy" data-offset="0">
           <div id="j" class="tab-pane fade in active">
             <h4>首页</h4>
              <p>学的不仅是技术，更是梦想</p>
           </div>
           <div id="a" class="tab-pane fade">
             <h4>Java</h4>
              <p>一心只想学Java</p>
           </div>
           <div id="cl" class="tab-pane fade">
             <h4>C语言</h4>
              <p>这是根本</p>
           </div>
           <div id="s" class="tab-pane fade">
             <h4>C++</h4>
              <p>通往编程高手之路</p>
           </div>
           <div id="f" class="tab-pane fade">
             <h4>.Net</h4>
              <p>另一个对立面</p>
              <div  class="well">
               <jsp:include page="east.jsp"></jsp:include> 
               <!-- <embed src="http://celix.apache.org/" type="application/http"> -->
              </div>
           </div>
           <div id="w" class="tab-pane fade">
             <h4>Python</h4>
              <p>灵活，这个可以有</p>
           </div>
         </div>
         </div>
         </div>
         <br>
         <br>
         <p> 两端对齐胶囊式的导航菜单</p>
         <ul class="nav nav-pills nav-justified">
           <li class="active"><a href="#home">Home</a></li>
           <li><a href="#java">Java</a></li>
           <li><a href="#c">C</a></li>
           <li class="dropdown"><!--下拉弹出菜单  -->
              <a class="dropdown-toggle" data-toggle="dropdown" href="s">
              	C++<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="">choice 1</a></li>
                <li><a href="">choice 2</a></li>
                <li><a href="">choice 3</a></li>
                <li><a href="">choice 4</a></li>
              </ul>
            </li>
           <li><a href="#net">.Net</a></li>
           <li><a href="#python">Html</a></li>
         </ul> 
         <br>
         <br>
         <p> 带禁用链接的标签式的导航菜单</p>
         <ul class="nav nav-tabs">
           <li class="active"><a href="j">Home</a></li>
           <li><a href="a">Java</a></li>
           <li><a href="c">C</a></li>
           <li class="disabled"><a href="s">C++(禁用)</a></li>
           <li><a href="f">.Net</a></li>
           <li><a href="w">Html</a></li>
         </ul>
         <br>
         <br> 
         <p> 默认的导航栏 </p>
         <nav class="navbar navbar-default" role="navigation">
           <div class="container-fluid">
             <div class="navbar-header">
               <a class="navbar-brand" href="#">bootstrap教程</a>
             </div>
             <div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="#">IOS</a></li>
                  <li><a href="#">Object-C</a></li>
                  <li class="dropdown">
                  	<a href="#" class="dropdown-toggle" data-toggle="dropdown">proManage
                  	  <span class="caret"></span>
                  	</a>
                  	<ul class="dropdown-menu">
                  	   <li><a href="#">git</a></li>
                  	   <li><a href="#">svn</a></li>
                  	   <li><a href="#">vss</a></li>
                  	   <li><a href="#">maven</a></li>
                  	</ul>
                  </li>
                  <li><a href="#">android</a></li>
                  <li><a href="#">windows</a></li>
                </ul>
             </div>
           </div>
         </nav>
         <br>
         <br>
         <p>响应式导航栏 </p>
         <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
              <div class="navbar-header">
                 <button class="navbar-toggle" type="button" data-toggle="collapse" 
                 data-target="#example-navbar-collapse">
	                 <span class="sr-only">切换导航</span>
	                 <span class="icon-bar"></span>
	                 <span class="icon-bar"></span>
	                 <span class="icon-bar"></span>
                 </button>
                 <a class="navbar-brand" href="#">bootstrap教程</a>
              </div>
              <div class="collapse navbar-collapse" id="example-navbar-collapse">
              <ul class="nav navbar-nav ">
                 <li class="active"><a href="#">maven</a></li>
                 <li><a href="#">ant</a></li>
                 <li><a href="#">web service</a></li>
                 <li><a href="#">web</a></li>
                 <li><a href="#">hibernate</a></li>
              </ul>
              </div>
            </div>
         </nav>
         <br>
         <br>
         <p>导航栏中的表单</p>
         <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
              <div class="navbar-header">
                 <a href="#" class="navbar-brand">bootstrap教程</a>
              </div>
              <div>
                 <form class="navbar-form navbar-left" role="form">
                  <div class="has-success">
                   <input type="text" class="form-control" placeholder="search">
                   <button type="submit" class="btn btn-default">提交</button>
                  </div>
                 </form>
                 <button type="button" class="btn btn-danger navbar-btn">导航栏中的按钮</button>
                 <p class="navbar-text">导航中的文本</p>
              </div>
            </div>
         </nav>
         <br>
         <br>
         <p>导航中的超链接</p>
         <nav class="navbar navbar-default">
           <div class="container-fluid">
             <div class="navbar-header">
               <a href="#" class="navbar-brand">bootstrap前端系统</a>
             </div>
             <ul class="nav navbar-nav navbar-right">
               <li><a href="#"><span class="glyphicon glyphicon-user "></span>注册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user "></span>登陆</a></li>
             </ul>
           </div>
         </nav>
         <br>
         <br>
         <p>堆叠导航中带有图标</p>
         <nav class="navbar">
           <div class="container-fluid">
             <ul class="nav navbar-pills">
               <li class="nav-header">List header</li>
               <li role="presentation" class="active"><a href="#"><span class="glyphicon glyphicon-home"> Home</span></a></li>
               <li role="presentation"><a href="#"><span class="glyphicon glyphicon-book"> Library</span></a></li>
               <li role="presentation"><a href="#"><span class="glyphicon glyphicon-pencil"> Applications</span></a></li>
			   <li class="nav-header">List header</li>
			   <li role="presentation"><a href="#"><span class="glyphicon glyphicon-wrench"> Profile</span></a></li>
               <li role="presentation"><a href="#"><span class="glyphicon glyphicon-cog"> Settings</span></a></li>
			   <li role="presentation"><a href="#"><span class="glyphicon glyphicon-flag"> Help</span></a></li>
             </ul>
           </div>
         </nav>
         <br>
         <br>
         <p>导航中的组件位置固定：左边/右边 及对齐方式</p>
         <nav class="navbar navbar-default navbar-fixed-bottom">
            <div class="container-fluid">
              <div class="navbar-header">
                 <button class="navbar-btn">bootstrap导航</button>
              </div>
              <ul class="nav navbar-nav navbar-left">
                <li>
                <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                Java<span class="caret"></span>
                </a>
                  <ul class="dropdown-menu">
                   <li><a href="#">spring</a></li>
                   <li><a href="#">hibernate</a></li>
                   <li><a href="#">struts</a></li>
                  </ul>
                </li>
                <li><a href="#">向左对齐-提交按钮</a></li>
                <li><a href="#">向左对齐-文本</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li class="dropup">
                <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                Java<span class="caret"></span>
                </a>
                  <ul class="dropdown-menu">
                   <li><a href="#">spring</a></li>
                   <li><a href="#">hibernate</a></li>
                   <li><a href="#">struts</a></li>
                  </ul>
                </li>
                <li><a href="#">向右对齐-提交按钮</a></li>
                <li><a href="#">向右对齐-文本</a></li>
              </ul>
            </div>
         </nav>
         <br>
         <br>
         <p>面包屑导航</p>
         <div class="container">
            <ol class="breadcrumb">
              <li><a href="#">2013</a></li>
              <li><a href="#">九月</a></li>
              <li class="active">13日</li>
              <li><a href="#">2016</a></li>
              <li><a href="#">那一天</a></li>
              <li><a href="#" class="btn btn-default btn-success">one</a></li>
              <li><a href="#">orange</a></li>
            </ol>
         </div>
         <br>
         <br>
   </body>
   </html>