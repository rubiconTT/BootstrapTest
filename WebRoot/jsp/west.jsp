<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>west.jsp</title>
<meta charset="gbk">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">

<link
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	margin: 50px;
}

@media ( min-width :768px) {
	.container {
		width: 600px;
	}
}
</style>

<style type="text/css">
/* 自定义的css */
.btn-w3r {
    background: #cb60b3;
    background: -moz-linear-gradient(top,  #cb60b3 0%, #ad1283 50%, #de47ac 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#cb60b3), color-stop(50%,#ad1283), color-stop(100%,#de47ac)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top,  #cb60b3 0%,#ad1283 50%,#de47ac 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top,  #cb60b3 0%,#ad1283 50%,#de47ac 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top,  #cb60b3 0%,#ad1283 50%,#de47ac 100%); /* IE10+ */
	background: linear-gradient(to bottom,  #cb60b3 0%,#ad1283 50%,#de47ac 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cb60b3', endColorstr='#de47ac',GradientType=0 ); /* IE6-9 */
    
    color:rgb(128,255,0);/*改变按钮中字体颜色  */
    width:200px;         /*设置按钮长宽  */
    height:200px;
    -moz-border-radius:50%;/*设置按钮的为圆角在不同的浏览器中 ，使按钮看上去像圆形 */
    -webkit-border-radius:50%;
    border-radius:50%;

}

.btn-w3r:hover {
  background:rgb(37,218,69);
  color:rbg(23,34,232);
  cursor: crosshair;
}

</style>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<h3>各种不同的按钮</h3>
	<div class="container">
		<p>
		    <!-- 按钮在激活时(active)将呈现为被按压的外观（深色的背景、深色的边框、阴影）。-->
		    <!-- 禁用一个按钮时(disabled="disabled")，它的颜色会变淡 50%，并失去渐变。鼠标悬浮其上会显示不可使用的标志 -->
			<button type="button" class="btn btn-default active">默认按钮</button>
			<button type="button" class="btn btn-default btn-xs" disabled="disabled">默认按钮</button>
		</p>
		<p>
			<button type="button" class="btn btn-primary">原始按钮</button>
			<button type="button" class="btn btn-primary btn-md active" style="color: rgb(219, 140, 60);">
			<span class="glyphicon glyphicon-save" ></span>
			下载</button>
		</p>
		<p>
			<button type="submit" class="btn btn-success active">成功按钮</button>
			<button type="button" class="btn btn-success btn-lg" style="color: rgb(219, 140, 60);">
			<span class="glyphicon glyphicon-headphones"></span>
			成功按钮</button>
		</p>
		<p>
			<button type="button" class="btn btn-info" disabled="disabled">信息按钮</button>
			<button type="button" class="btn btn-info btn-sm" style="text-shadow: yellow 5px 3px 8px;">
			<span class="glyphicon glyphicon-user"></span>
			信息按钮</button>
		</p>
		<p>
			<button type="button" class="btn btn-warning btn-lg" style="font-size:60px;">
			<span class="glyphicon glyphicon-user"></span>
			警告按钮</button>
			<br><br>
			<button type="button" class="btn btn-warning btn-block">警告按钮<span class="caret"></span></button>
			<!--关闭按钮  -->
			<button type="button" class="close" aria-hidden="true">&times;</button>
		</p>
		<p>
		    <!--可以在 <a>、<button> 或 <input> 元素上使用按钮 class。
		    但是建议您在 <button> 元素上使用按钮 class，避免跨浏览器的不一致性问题。  -->
			<button type="button" class="btn btn-danger" onclick="javascript:showResult();">危险按钮</button>
			<input type="button" class="btn btn-danger btn-xs" name="危险按钮" value="危险按钮" />
		</p>
		<p>
			<button type="button" class="btn btn-link">链接按钮</button>
			<a href="#" class="btn btn-default btn-lg disabled" role="button">链接按钮</a>
		</p>
	</div>
	<div class="container">
	  <h5>对于图片的处理</h5>
	  <!-- img-circle/responsive/thumbnail/rounded -->
	  <img alt="图片" src="../images/113.gif" class="img-circle"> 
	</div>
	<div class="container">
	   <!--使用插入符表示下拉功能和方向  -->
	   <div><span class="caret"></span></div>
	   <div class="clearfix">
	   <div class="pull-left" style="background:#58D3F7;">向左快速浮动</div>
	   <div class="pull-right" style="background: #DA81F5;">向右快速浮动</div>
	   </div>
	   <br>
	   <div class="row">
	     <div class="center-block" style="width:200px;background-color:#ccc;">这是一个居中块文本实例</div>
	   </div>
	   <br>
	   <div class="row">
	     <div class="show">这是可见文本区域</div>
	     <div class="hidden">这是不可见文本区域</div>
	   </div>
	   <br>
	   <div class="row">
	     <!-- 使用sr-only来把元素对所有设备隐藏，除了屏幕阅读器。 -->
	     <label class="sr-only" for="email">邮箱</label>
	     <input type="text" placeholder="email" />
	   </div>
	</div>
	<br>
	<br>
	<div class="container" style="display:none;position:absolute;" id="con1">
	  <div class="row visible-on ">
	      <button type="button" id="closeDiv" class="btn btn-danger close" aria-hidden="true">&times;</button>
	      <br>
	      <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
        box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-xs">特别小型</span>
            <span class="visible-xs">✔ 在特别小型设备上可见</span>
        </div>
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
        box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-sm">小型</span>
            <span class="visible-sm">✔ 在小型设备上可见</span>
        </div>
        <div class="clearfix visible-xs"></div>
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
        box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-md">中型</span>
            <span class="visible-md">✔ 在中型设备上可见</span>
        </div>
        <div class="col-xs-6 col-sm-3" style="background-color: #dedef8;
        box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <span class="hidden-lg">大型</span>
            <span class="visible-lg">✔ 在大型设备上可见</span>
        </div>
	  </div>
	</div>
	<div class="container">
	   <p>
	    <button type="button" class="btn btn-default">
	        <span class="glyphicon glyphicon-sort-by-attributes"></span>
	    </button>
	    <button type="button" class="btn btn-default">
	        <span class="glyphicon glyphicon-sort-by-attributes-alt"></span>
	    </button>
	    <button type="button" class="btn btn-default">
	        <span class="glyphicon glyphicon-sort-by-order"></span>
	    </button>
	    <button type="button" class="btn btn-default">
	        <span class="glyphicon glyphicon-sort-by-order-alt"></span>
	    </button>
		</p>
		<button type="button" class="btn btn-default btn-lg">
		    <span class="glyphicon glyphicon-user"></span>
		    User
		</button>
		<button type="button" class="btn btn-default btn-sm">
		    <span class="glyphicon glyphicon-user"></span>
		    User
		</button>
		<button type="button" class="btn btn-default btn-xs">
		    <span class="glyphicon glyphicon-user"></span>
		    User
		</button>
	</div>
	<!--带有导航栏的窗体  -->
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
	        </div>
	        <div class="collapse navbar-collapse">
	            <ul class="nav navbar-nav">
	                <li class="active">
	                    <a href="#home">
	                        <span class="glyphicon glyphicon-home">Home</span></a>
	                </li>
	                <li>
	                    <a href="#shop">
	                        <span class="glyphicon glyphicon-shopping-cart">Shop</span></a>
	                </li>
	                <li>
	                    <a href="#support">
	                        <span class="glyphicon glyphicon-headphones">Support</span></a>
	                </li>
	            </ul>
	        </div>
	        <!-- /.nav-collapse -->
	    </div>
	    <!-- /.container -->
	</div>
	<br><br>
	<p>定制按钮</p>
	<div class="container">
	  <button class="btn btn-w3r btn-lg" type="button" >定制按钮</button>
	</div>
	
</body>

</html>