<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/jquery.datetimepicker.min.css" rel="stylesheet" media="screen">
        <style type="text/css">
         body { 
          width:100px;
		  height:100px;
		  vertical-align: center;
	      font-family: 'Raleway', sans-serif;
          background: #00FF00 url(<%=path %>/images/login_03.png);
		}

		 p {
			color:#CCC;
		}

		.middlePage {
			width: 680px;
		    height: 500px;
		    position: absolute;
		    top:0;
		    bottom: 0;
		    left: 0;
		    right: 0;
		    margin: auto;
		}

		.logo {
			color:#CCC;
		}
      </style>
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script  src="<%=path %>/js/moment.js"></script> 
	<script  src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
    <script type="text/javascript">
      
    </script>

</head>
 <body >
 <div class="middlePage">
	<div class="page-header">
	  <h1 class="logo">SSE <small>Welcome To RPM!</small></h1>
	</div>
	<div class="panel panel-info">
	<div class="panel-body">
		<div class="row">
			<div class="col-sm-6" >
				<a href="#"><img src="<%=path %>/images/login_01.png" /></a>
			</div>
			<div class="col-sm-6" >
				<img src="<%=path %>/images/login_02.png" style="background-color: white;width:100%;height:30%;">
			    <div class="container" style="background-color: white;width:100%;margin-left: 0px;height:70%;">
			    <label class="input-group"><strong style="letter-spacing: 5px;font-size:medium;">登陆</strong></label>
			    <br>
			    <div class="input-group">
			       <span class="input-group-addon"><i class="glyphicon glyphicon-user "></i></span>
			       <input class="form-control"  type="text" placeholder="请输入用户名">
			    </div>
			    <br>
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			      <input class="form-control" type="password" placeholder="请输入密码">
			    </div>
			    <br>
			    <button class="btn btn-primary btn-md form-control">
			        <font style="letter-spacing: 30px;"> 登陆</font>
			    </button>
			    <br>
			    </div>
			</div>
		</div>
	</div>
	</div>
</div>
 </body>
 </html>