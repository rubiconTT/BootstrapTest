<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
   <head>
      <title>top.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      
      <!-- width 属性控制设备的宽度
       initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放
       user-scalable=no 可以禁用其缩放（zooming）功能
       maximum-scale=1.0 与 user-scalable=no 一起使用。这样禁用缩放功能后，用户只能滚动屏幕 -->
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
      <!-- 引入 Bootstrap --><!-- 新 Bootstrap 核心 CSS 文件 -->
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      
      <!-- 可选的Bootstrap主题文件（一般不使用） -->
      <!-- 
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
       -->
      <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="js/jquery-1.11.1.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
      <style type="text/css">
      
        .img-responsive {
        
          display:block;
          max-width:100%;
          height:auto;
        }
        
        body {
          font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		  font-size: 14px;
		  line-height: 1.428571429;
		  color: #333333;
		  background-color: #ffffff;
          margin: 50px;  /**body 的边距*/ 
        }
        
        a:hover,
        a:focus {
          color: #2a6496;
          text-decoration: underline;
        }
        a:focus {
          outline: thin dotted #333;
		  outline: 5px auto -webkit-focus-ring-color;
		  outline-offset: -2px;
        }
      
        /**构造一个伪元素，before防止上边距崩塌，after伪元素清除浮动*/
        /**container表示一个容器*/
        .container:before,  
        .container:after {
            /**display:table;
            background-color:green;*/
            /**content:" beautiful world"; */ /**边框中的装饰内容*/
        }
        
        /**媒体查询*/
        /**
               媒体查询有两个部分，先是一个设备规范，然后是一个大小规则
        min-width的属性值有以下几种
        @screen-sm-min：平板电脑，宽度为768px起，s代表small,小型设备
        @screen-md-min：台式电脑，宽度为992px起,m代表middle，中型设备 
        @screen-lg-min：大的台式电脑，宽度为1200px起,l代表large，大型设备
        */
        @media (min-width:768px) {
        
           .container {
              width:750px;
           }
        }
      
      </style>
   </head>
   <body>
      <h1>Hello, world!</h1>
      <h2>this is a bootstrap fronter page</h2>
      <a href="#" >click here</a>
      
      <div class="container">
         <div class="row">
            <div class="col-md-3"> 
              <p>
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
            accusantium doloremque laudantium.
              </p>
            </div>
             <div class="col-md-9"style="background-color: #dedef8;box-shadow: 
         inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
              <p>
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
            accusantium doloremque laudantium.
              </p>
            </div>
         </div>
         <div class="row">
           <div class="col-sm-4 col-md-6 col-lg-5" >
             <div class="row" style="background-color: #B18904; box-shadow: 
             inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <p> 
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
            </p>
             </div>
             <div class="row" style="background-color: #B18904; box-shadow: 
             inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <p> 
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
            </p>
             </div>
             <div class="col-md-6" style="background-color: #B18904; box-shadow: 
             inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <h1>第三行，第一列</h1>
             </div>
             <div class="col-md-6" style="background-color: #B18904; box-shadow: 
             inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <h1>第三行，第二列</h1>
             </div>
           </div>
           <div class="col-sm-8 col-md-6 col-lg-7" >
             <h1>row 1 column 2</h1>
             <div class="row">
               <div class="col-md-3"style="background-color: #B18904; box-shadow: 
               inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
               <p> 
               Consectetur art party Tonx culpa semiotics. Pinterest 
               assumenda minim organic quis. 
                </p>
               </div>
               <div class="col-md-3" style="background-color: #B18904; box-shadow: 
               inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
               <p> 
               Consectetur art party Tonx culpa semiotics. Pinterest 
               assumenda minim organic quis. 
                </p>
               </div>
               <div class="col-md-3" style="background-color: #B18904; box-shadow:
                inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
                <p> 
               Consectetur art party Tonx culpa semiotics. Pinterest 
               assumenda minim organic quis. 
                </p>
                </div>
               <div class="col-md-3" style="background-color: #B18904; box-shadow:
                inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
                <p> 
               Consectetur art party Tonx culpa semiotics. Pinterest 
               assumenda minim organic quis. 
                </p>
                </div>
             </div>
           </div>
         </div>
          <div class="clearfix visible-xs"></div> 
         <div class="row">
           <div class="col-xs-6" style="background-color: #dedef8;box-shadow: 
        inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> 
           </div>
           
           <!-- col-xs/sm/md/lg-offset-*表示让当前单元格产生偏移 -->
           <div class="col-xs-6 col-md-offset-3" style="background-color: #dedef8;box-shadow: 
        inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
             <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do 
            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 
            enim ad minim veniam, quis nostrud exercitation ullamco laboris 
            nisi ut aliquip ex ea commodo consequat. 
            </p> 
           </div>
         </div>
       <div class="row"> 
        <p> 
                    排序前 
        </p> 
        <div class="col-md-4" style="background-color: #dedef8; box-shadow:
           inset 1px -1px 1px #444, inset -1px 1px 1px #444;"> 
                     我在左边 
        </div> 
        <div class="col-md-8" style="background-color: #dedef8; box-shadow: 
           inset 1px -1px 1px #444, inset -1px 1px 1px #444;"> 
		    我在右边 
        </div> 
    	</div> 
	    <div class="row"> 
        <p> 
                   排序后 
        </p> 
        <!-- 以一种顺序编写列，然后以另一种顺序显示列。 -->
        <!-- 使用 .col-md-push-* 和 .col-md-pull-* 类来互换这两列的顺序。 -->
        <div class="col-md-4 col-md-push-8" style="background-color: #dedef8; box-shadow: 
        inset 1px -1px 1px #444, inset -1px 1px 1px #444;"> 
		   我在左边 
        </div> 
        <div class="col-md-8 col-md-pull-4" style="background-color: #dedef8; box-shadow: 
        inset 1px -1px 1px #444, inset -1px 1px 1px #444;"> 
		   我在右边 
        </div> 
        </div>
      </div>
   </body>
</html>