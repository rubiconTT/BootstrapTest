<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
    <title>主页面</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/jquery.datetimepicker.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/style.css" rel="stylesheet" media="screen">
        <style type="text/css">
         body { 
         
            overflow: hidden;
          } 
          
          .row {
          
            margin-top:-21px;
          }
          
         #navrpm {
           
           background-color:rgb(24,142,205);
         }
          
         .breadcrumb {
           background-color:rgb(24,142,205);
           background: rgb(24,142,205);
         }
         
         #breadcrumbdiv {
           background-color:rgb(24,142,205);
         }
         a,span,strong {
           
           color: white;
         }
         
         #barnav {
         
           margin-top: 1%;
         }
         
         #panelleft {
         
            background-color:black;
            border:1px solid black;
            height:100%;
         
         }
         
         #accordion {
           
            background-color:black;
         }
         
         #rqtitle {
           color:white;
         }
         
         #footer {
           font-size:xx-small;
           text-align:center;
           color:white;
           width:100%;
           height:30px;
           padding-top:8px;
           border:1px solid black;
           background-color: #363636;
         }
         
         .panel-left  {
            margin-left: -80px;
         }
      </style>
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script  src="<%=path %>/js/moment.js"></script> 
	<script  src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/accordionpanel.js" charset="UTF-8"></script>
    <script type="text/javascript">
    
    </script>
</head>
 <body >
 <nav id="navrpm" class="navbar navbar-default" role="navigation">
           <div class="container-fluid">
             <div id="breadcrumbdiv" class="navbar-header">
               <ol class="breadcrumb">
	              <li><img  src="<%=path %>/images/rpm_02.png"></li>
	              <li><label id="rqtitle" style="font-size: x-large;font-family: 'Courier New', Courier, monospace;">需求发布系统</label></li>
              </ol>
             </div>
             <div class="col-md-offset-4">
                <ul id="barnav" class="nav navbar-nav" role="tablist">
                  <li class="active"><a data-toggle="tab" href="#systemMgmt"><span class="glyphicons glyphicons-git-branch"><strong>系统管理</strong></span></a></li>
                  <li><a data-toggle="tab" href="#idMgmt"><span class="glyphicon glyphicon-user "><strong>人员账号管理</strong></span></a></li>
                  <li><a data-toggle="tab" href="#myReq"><span class="glyphicon glyphicon-user "><strong>我的需求</strong></span></a></li>
                  <li><a data-toggle="tab" href="#otherReq"><span class="glyphicon glyphicon-user "><strong>他人需求</strong></span></a></li>
                  <li><a data-toggle="tab" href="#reqCensus"><span class="glyphicon glyphicon-user "><strong>需求统计</strong></span></a></li>
                </ul>
                <ul id="lognav" class="nav navbar-nav navbar-right">
	                <li><a href="#"><span>当前用户：张三</span></a></li>
	                <li><a href="../rpm/thirteen.jsp"><span class="glyphicon glyphicon-log-out ">退出</span></a></li>
                </ul>
             </div>
           </div>
 </nav>
 <div class="container">
     <div class="tab-content" >
            <div id="systemMgmt" class="tab-pane fade in active ">
              <div class="row">
			     <div id="panelleft1" class="col-sm-2 panel-left">
			       <ul id="accordion1" class="accordion">
					<li>
						<div class="link">系统管理<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li><a data-toggle="pill" href="#system1">系统1</a></li>
							<li><a data-toggle="pill" href="#">系统2</a></li>
							<li><a data-toggle="pill" href="#">系统3</a></li>
						</ul>
						<div class="link">系统管理2<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li><a data-toggle="pill" href="#system1">系统1</a></li>
							<li><a data-toggle="pill" href="#">系统2</a></li>
							<li><a data-toggle="pill" href="#">系统3</a></li>
						</ul>
						<div class="link">系统管理3<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li><a data-toggle="pill" href="#system1">系统1</a></li>
							<li><a data-toggle="pill" href="#">系统2</a></li>
							<li><a data-toggle="pill" href="#">系统3</a></li>
						</ul>
					</li>
				   </ul>
			     </div>
			     <div id="detailpage1" class="col-sm-10">
			       <iframe id="system1" src="../rpm/sixth.jsp" class="tab-pane fade in active" style="overflow:auto; background-color:white;width:120%;height:1200px;">
			       
			       </iframe>
			     </div>
             </div>
            </div>
            <div id="idMgmt" class="tab-pane fade  ">
              <div class="row">
			     <div id="panelleft2" class="col-sm-2 panel-left">
			       <ul id="accordion2" class="accordion">
					<li>
						<div class="link">需求管理员<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li><a id="openReqAdminMgmt" data-toggle="pill" href="#reqAdmin">需求管理员</a></li>
						</ul>
					</li>
				   </ul>
				   <ul id="accordion6" class="accordion">
					<li>
						<div class="link">普通用户<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li><a id="opemGeneralUserMgmt" data-toggle="pill" href="#generalUser">普通用户</a></li>
						</ul>
					</li>
				   </ul>
			     </div>
			     <div id="detailpage2" class="col-sm-10">
			       <iframe id="userMgmt" src="../rpm/twelfth.jsp" class="tab-pane fade in active" style="overflow:auto; background-color:white;width:120%;height:1200px;">
			       </iframe>
			     </div>
             </div>
            </div>
          
            <div id="myReq" class="tab-pane fade ">
              <div class="row" >
			     <div id="panelleft3" class="col-sm-2 panel-left">
			       <ul id="accordion3" class="accordion">
					<li>
						<div class="link">所有需求<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul id="myScrollspy" class="submenu">
							<li class="active"><a id="openMyReq" data-toggle="pill" href="#myRequirment">我的需求</a></li>
							<li><a id="openOtherReq" data-toggle="pill" href="#otherRequirment">他人需求</a></li>
						</ul>
					</li>
				   </ul>
			     </div>
			     <div id="detailpage3" class="tab-content col-sm-10" >
			          
			       <iframe id="myRequirment" src="../rpm/seventh.jsp" class="tab-pane fade in active" style="overflow:auto; background-color:white;width:120%;height:1200px;">
			       </iframe>
			      
			     </div>
             </div>
            </div>
            <div id="otherReq" class="tab-pane fade">
              <div class="row">
			     <div id="panelleft4" class="col-sm-2 panel-left">
			       <ul id="accordion4" class="accordion">
					<li>
						<div class="link">所有需求<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li><a href="#">我的需求</a></li>
							<li><a href="#">他人需求</a></li>
						</ul>
					</li>
				   </ul>
			     </div>
			     <div id="detailpage4" class="col-sm-10">
			       
			     </div>
             </div>
            </div>
            <div id="reqCensus" class="tab-pane fade ">
              <div class="row">
			     <div id="panelleft5" class="col-sm-2 panel-left">
			       <ul id="accordion5" class="accordion">
					<li>
						<div class="link">所有需求<i class="glyphicon glyphicon-chevron-down"></i></div>
						<ul class="submenu">
							<li class="active"><a id="openStatisticsPreReq" data-toggle="pill" href="#statisticsReq">预需求</a></li>
							<li><a id="openStatisticsFormalReq" data-toggle="pill" href="#statisticsReq">正式需求</a></li>
							<li><a id="openStatisticsNullifyReq" data-toggle="pill" href="#statisticsReq">已作废需求</a></li>
						</ul>
					</li>
				   </ul>
			     </div>
			     <div id="detailpage5" class="col-sm-10">
			       <iframe id="statisticsReq" src="../rpm/eighth.jsp" class="tab-pane fade in active" style="overflow:auto; background-color:white;width:120%;height:1200px;">
			       </iframe>
			     </div>
             </div>
            </div>
         </div>
 </div>
  
  <div id="footer" class="navbar-fixed-bottom">
      <small>©上海证券交易所版权所有 2010 沪ICP备05004045号 建议使用IE7.0+浏览器，1024*768分辨率</small>
  </div>
  <script type="text/javascript">
    
    $(function(){
		$("#openReqAdminMgmt").click(function(e){
    		
    		e.preventDefault();
    		$("#userMgmt").removeAttr('src');
    		$("#userMgmt").attr('src',"../rpm/twelfth.jsp");
    		$(this).tab("show");
 
    	});
		$("#opemGeneralUserMgmt").click(function(e){
    		
    		e.preventDefault();
    		$("#userMgmt").removeAttr('src');
    		$("#userMgmt").attr('src',"../rpm/twelfth.jsp");
    		$(this).tab("show");
 
    	});
    	
    	
    	$("#openMyReq").click(function(e){
    		
    		e.preventDefault();
    		$("#myRequirment").removeAttr('src');
    		$("#myRequirment").attr('src',"../rpm/seventh.jsp");
    		$(this).tab("show");
 
    	});
    	
		$("#openOtherReq").click(function(e){
    		
    		e.preventDefault();
    		$("#myRequirment").removeAttr('src');
    		$("#myRequirment").attr('src',"../rpm/fifth.jsp");
    		$(this).tab("show");
 
    	});
		
		$("#openStatisticsPreReq").click(function(e){
			e.preventDefault();
			$("#statisticsReq").removeAttr("src");
			$("#statisticsReq").attr("src","../rpm/eighth.jsp");
			//$(this).tab("show");
			
		});
		$("#openStatisticsFormalReq").click(function(e){
			
			e.preventDefault();
			$("#statisticsReq").removeAttr("src");
			$("#statisticsReq").attr("src","../rpm/ninth.jsp");
			//$(this).tab("show");
		});
		$("#openStatisticsNullifyReq").click(function(e){
			
			e.preventDefault();
			$("#statisticsReq").removeAttr("src");
			$("#statisticsReq").attr("src","../rpm/tenth.jsp");
			//$(this).tab("show");
		});
		
		
    	
    	

    });
  
  
  </script>
 </body>
 </html>