<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=yes">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/jquery.datetimepicker.min.css" rel="stylesheet" media="screen">
        <style type="text/css">
         body { 
          margin-left:0px;
		  vertical-align: center;
	      font-family: 'Raleway', sans-serif;
	      overflow:hidden;
	      background: #000000 url(<%=path %>/images/login_11.png);
		}
		
		dl {
		
		  margin-top:0px;
		}
		
		dd {
		
		  margin-left:30px;
		  margin-right:30px;
		}
		
		#topsideimg {
		
		  margin-left: 0px;
		  opacity:0;
		}
		
		#rightaboveimg {
		
		   width:100%;
		}
		/**屏幕尺寸介于768像素和992像素之间时的页面展现  */
		@media screen and (min-width:768px) and (max-width:992) {
		
		   div#rightoutdiv {
		      width:100%;
		   }   
		}
		/**屏幕尺寸介于993像素和1200像素之间时的页面展现  */
		@media screen and (min-width:993px) and (max-width:1200px) {
		   div#leftdiv {
		   
		      margin-left:25%;
		   }
		   
		   div#rightdiv {
		     height:311px;
		   }
		   
		   img#leftimg {
		     
		     margin-left:-75px;
		     height:311px;
		   }
		}
		/**屏幕尺寸大于1201像素时的页面展现  */
		@media screen and (min-width:1201px) {
		
		   div#leftdiv {
		      margin-left:30%;
		   }
		   
		   div#rightdiv {
		     height:332px;
		   }
		   
		   img#leftimg {
		     
		     margin-left:-35px;
		     height:332px;
		   }
		}

      </style>
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>

</head>
 <body>
	<div class="container hidden-xs hidden-sm " style="margin-left: 0px;">
         <div class="row" style="margin-left: 0px;" >
	         <img id="topsideimg" src="<%=path %>/images/login_07.png">
          </div>
      </div>
      <form id="loginForm" action="" >
      <div class="container">
         <div class="row">
             <div id="leftdiv" class="col-md-3  clearfix hidden-sm  hidden-xs"  >
                <img id="leftimg" src="<%=path %>/images/login_01.png">
             </div>
             <div id="rightoutdiv"  class="col-md-4  clearfix">
                 <div>
                    <div id="rightdiv" class="row" style="background-color: white; ">
                      <dl >
                        <dt><img id="rightaboveimg" src="<%=path %>/images/login_02.png"></dt>
                        <dd >
                          <div><label class="input-group"><strong style="letter-spacing: 15px;font-size:medium;">登录</strong></label></div>
                          <div id="messageTips"></div>
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
				          <div class="clearfix">
				            <button type="button" class="btn btn-primary btn-block">
				             <font style="letter-spacing: 30px;">
				                                      登录
				             </font>
				          </button>
				          </div>
				          <br>
                        </dd>
                      </dl>
                    </div>
                 </div>
             </div>
          </div>
      </div>
      </form>
 </body>
 </html>