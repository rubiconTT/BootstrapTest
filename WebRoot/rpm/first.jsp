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
          
			 vertical-align: center;
	         background: #00FF00 url(<%=path %>/images/login_03.png);
          } 
          
          i {
          
	         background-color:rgb(240, 240, 240);
	         background-position: center;
	         color: rgb(255, 255, 255);
          }
          
          .col-md-3 {
            
             padding-right: 0px;
             padding-left: 0px;
             padding-bottom: 0px;
             
          }
          
         @MEDIA (min-width:300px) and (max-width:500px)  {
         
           #divright {
             width:289px;
           }
          
	
		}
      </style>
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script  src="<%=path %>/js/moment.js"></script> 
	<script  src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
    <script type="text/javascript">
      
       $(function(){
    	  
    	   $("#divright").css("height",$("#divleft").height());
    	   
       });
    
    </script>

</head>
 <body >
 <div class="container">
 <div class="row">
   <img alt="" src="<%=path %>/images/login_07.png">
 </div>
   <div class="row" id="divlogin">
     <div id="divleft" class="col-md-3 hidden-xs " >
         <img src="<%=path %>/images/login_01.png" style="width:100%;">
      </div>
      <div id="divright" class="col-md-3" >
          <img src="<%=path %>/images/login_02.png" style="background-color: white;width:100%;height:30%;">
          <div class="container" style="background-color: white;width:100%;margin-left: 0px;height:70%;">
          <label class="input-group"><strong style="letter-spacing: 5px;font-size:medium;">登陆</strong></label>
          <br>
          <div class="input-group">
          <span class="input-group-addon">
            <i class="glyphicon glyphicon-user "></i>
          </span>
          <input class="form-control"  type="text" placeholder="请输入用户名">
          </div>
          <br>
          <div class="input-group">
          <span class="input-group-addon">
          <i class="glyphicon glyphicon-lock"></i>
          </span>
          <input class="form-control" type="password" placeholder="请输入密码">
          </div>
          <br>
          <button class="btn btn-primary btn-md form-control">
             <font style="letter-spacing: 30px;">
                                      登陆
             </font>
          </button>
          <br>
          </div>
      </div>
     </div>
   
   <div class="row">
   <img alt="" src="<%=path %>/images/login_08.png">
   </div>
   </div>
 </body>
 </html>