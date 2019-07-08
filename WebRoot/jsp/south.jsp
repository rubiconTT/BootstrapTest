<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
   <head>
      <title>south.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <style type="text/css">
      body {
		margin: 50px;
	}
	
	@media ( min-width :768px) {
		.container {
			width: 600px;
		}
	}
	
	.input-medium {
	
	    border-radius:7px;
	    border-color:green;
	
	}
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </head>
   <body>
       <div class="container">
         <i class="glyphicon glyphicon-search">搜索</i>
         <input type="search" class="input-medium"> 
         <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search">搜索</i> </button>
         <p>&copy; Company 2016</p> 
       </div>
       <br><br>
       <div class="container">
           <!--下拉式菜单 dropup指定下拉菜单向上弹出 -->
           <div class="dropdown ">
             <button class="btn btn-default btn-lg dropdown-toggle" id="dropdownmenu1" data-toggle="dropdown">
                          主题
             <span class="caret"></span>
             </button>
             <!-- dropdown-menu创建下拉菜单 pull-left表示左对齐-->
             <ul class="dropdown-menu pull-left" role="menu" aria-labelledby="dropdownmenu1">
               <li role="presentation" class="dropdown-header">静态语言</li>
               <li role="presentation" >
                 <a data-toggle="tooltip" title="this is tooltip" role="menuitem" tabindex="-1" href="#" >Java</a>
               </li>
               <li role="presentation" >
                 <a role="menuitem" tabindex="-1" href="#">C#</a>
               </li>
               <li role="presentation" >
                 <a role="menuitem" tabindex="-1" href="#">C++</a>
               </li>
               <li role="presentation" class="disabled" >
                 <a role="menuitem" tabindex="-1" href="#">C</a>
               </li>
               <!-- divider表示分割线 -->
               <li role="presentation" class="divider"></li>
               <li role="presentation" class="dropdown-header">动态语言</li>
                <li role="presentation" >
                 <a role="menuitem" tabindex="-1" href="#">Java script</a>
               </li>
                <li role="presentation" >
                 <a role="menuitem" tabindex="-1" href="#">Python</a>
               </li>
                <li role="presentation" >
                 <a role="menuitem" tabindex="-1" href="#">Ruby</a>
               </li>
             </ul>
           </div>
       </div>  
       <br>
       <br>
       <div class="container">
       <div class="row">
         <div class="btn-group">
            <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-align-left" style="color: rgb(160, 140, 60);"></span></button>
            <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-align-center" style="color: rgb(160, 140, 60);"></span></button>
            <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-align-right" style="color: rgb(160, 140, 60);"></span></button>
            <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-align-justify" style="color: rgb(160, 140, 60);"></span></button>
         </div>
         </div>
         <br>
         <br>
         <div class="row">
            <div class="btn-toolbar">
               <div class="btn-group">
                    <button class="btn btn-default btn-xs">按钮1</button>
		            <button class="btn btn-default btn-xs">按钮2</button>
		            <button class="btn btn-default btn-xs">按钮3</button>
               </div>
               <!-- 垂直按钮组,向上弹出下拉列表 -->
               <div class="btn-group-vertical dropup">
                    <button class="btn btn-default btn-sm">按钮4</button>
		            <button class="btn btn-default btn-sm">按钮5</button>
		            <div class="btn-group-vertical">
		            <button class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
		                                 按钮6<span class="caret"></span>
		            </button>
		            <ul class="dropdown-menu">
		              <li><a href="#">arbono</a></li>
		              <li><a href="#">zousi</a></li>
		              <li><a href="#">hainafeier</a></li>
		            </ul>
		            </div>
               </div>
               <!--水平按钮组  -->
               <div class="btn-group">
                    <button class="btn btn-default btn-md">按钮7</button>
		            <button class="btn btn-default btn-md">按钮8</button>
		            <!--带分隔线的下拉列表按钮  -->
		            <div class="btn-group">
		            <button class="btn btn-default btn-primary">按钮9</button>
		            <button class="btn btn-default btn-primary dropdown-toggle" data-toggle="dropdown">
		           		 <span class="caret"></span>
		           		 <span class="sr-only"></span>
		           	</button>
		            <ul class="dropdown-menu" >
		              <li ><a href="#">Java</a></li>
		              <li ><a href="#">c</a></li>
		              <li ><a href="#">object-c</a></li>
		            </ul>
		            </div>
               </div>
            </div>
         </div>
       </div> 
       <!--基本的输入框组  -->
       <div class="container"  style="padding: 100px 100px 10px;">
          <form class="bs-example bs-example-form" role="form">
             <div class="input-group input-group-lg">
                <input type="text" class="form-control" placeholder="twitter">
                <span class="input-group-addon">.00</span>
             </div>
             <div class="input-group">
                <span class="input-group-addon">@</span>
                <input type="text" class="form-control" placeholder="email">
             </div>
             <div class="input-group">
                <span class="input-group-addon">$</span>
                <input type="text" class="form-control">
                <span class="input-group-addon">.00</span>
             </div>
          </form>
          <form class="bs-example bs-example-form" role="form">
            <div class="row">
              <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        <input type="checkbox"></span>
                    <input type="text" class="form-control">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <input type="checkbox"></span>
                    <input type="text" class="form-control">
                </div>
            </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        <input type="radio" name="optionsRadios"></span>
                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        <input type="radio" name="optionsRadios"></span>
                    <input type="text" class="form-control">
                </div>
            </div>
            </div>
            <div class="row">
              <div class="col-ms-4 input-group" >
                 <span class="input-group-btn">
                 <button class="btn btn-default">!go</button></span>
                 <input type="text" class="form-control">
              </div>
            </div>
            <div class="row">
              <div class="col-ms-4 input-group" >
                 <input type="text" class="form-control">
                 <span class="input-group-btn">
                 <button class="btn btn-default">go!</button>
                 </span>
              </div>
            </div>
            <br>
            <div class="row">
               <div class="col-lg-4 input-group">
                  <div class="input-group-btn">
                    <button class="btn btn-primary dropdown-toggle " data-toggle="dropdown">
                                          下拉菜单<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                       <li><a href="#">java</a></li>
                       <li><a href="#">c</a></li>
                       <li><a href="#">c++</a></li>
                       <li><a href="#">python</a></li>
                     </ul>
                    </div>
                    <input type="text" class="form-control">
               </div>
            </div>
            <div class="row">
               <div class="col-lg-4 input-group ">
                 <input type="text" class="form-control" value="">
                 <div class="input-group-btn dropup">
                    <button class="btn btn-success btn-group dropdown-toggle" data-toggle="dropdown">
                      		右下拉菜单<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                      <li><a href="#">choice 1</a></li>
                      <li><a href="#">choice 1</a></li>
                      <li><a href="#">choice 1</a></li>
                      <li class="presentation divider"></li>
                      <li><a href="#">choice 1</a></li>
                      <li><a href="#">choice 1</a></li>
                    </ul>
                 </div>
               </div>
            </div>
            <div class="row">
              <div class="input-group">
              <div class="input-group-btn">
                <button class="btn btn-warning">分离的下拉菜单</button>
                <button class="btn dropdown-toggle" data-toggle="dropdown">
                 <span class="caret"></span>
                 <span class="sr-only"></span>
                </button>
                <ul class="dropdown-menu">
                  <li><a href="#">你好</a> </li>
                  <li><a href="#">他好</a> </li>
                  <li><a href="#">我好</a> </li>
                  <li><a href="#">大家好</a> </li>
                  <li role="presentation" class="divider"></li>
                  <li><a href="#">全国人民都好</a> </li>
                </ul>
                </div>
                <input type="text" class="form-control">
              </div>
            </div>
          </form>
       </div>
   </body>
   </html>