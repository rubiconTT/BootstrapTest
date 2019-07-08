<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
   <head>
      <title>index.jsp</title>
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
        @screen-md-min：台式电脑，宽度为992px起,m代表middlw，中型设备 
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
      <h3>各种表格</h3>
      <h1>Hello, world!</h1>
      <h2>this is a bootstrap fronter page</h2>
      <a href="#" >click here</a>
      
      <div class="container">
         <div class="row">
            <div class="col-md-7"> 
              <p>
            	<p class="text-primary">本行内容带有一个 primary class</p>
				<p class="text-success">本行内容带有一个 success class</p>
				<p class="text-info">本行内容带有一个 info class</p>
				<p class="text-warning">本行内容带有一个 warning class</p>
				<p class="text-danger">本行内容带有一个 danger class</p>
              </p>
            </div>
             <div class="col-md-5"style="background-color: #dedef8;box-shadow: 
              inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
              <h2>引导主体副本</h2>
              <p class="lead">
	            <p class="text-left">向左对齐文本</p>
				<p class="text-center">居中对齐文本</p>
				<p class="text-right">向右对齐文本</p>
				<p class="text-muted">本行内容是减弱的</p>
				
              </p>
            </div>
         </div>
         <div class="row">
	            <small>本行内容是在标签内</small><br>    <!--文本块大小为默认文本大小的85%，实际意思为缩小字体间距 -->
				<strong>本行内容是在标签内</strong><br>  <!--字体加粗  -->
				<em>本行内容是在标签内，并呈现为斜体</em><br>  <!--字体为斜体  -->
		 </div>
			
			
		   <div class="row">	
				<abbr title="World Wide Web">WWW</abbr><br>    <!-- 简写文本内容，鼠标悬停会显示具体信息 -->
				<abbr title="Real Simple Syndication" class="initialism">RSS</abbr>
			</div>
			
		   <div class="row">
				<address>                                      <!-- 地址 -->
				  <strong>SSE Information&Net Company, Inc.</strong><br>
				  浦东新区张东路1387号36-37栋<br>
				  <abbr title="telephone number">P:021-55978810</abbr><br>
				  <a href="mailto:#">someone@sse.net</a>      <!-- 发送邮件 -->
				</address>
           </div>
           
           <!-- 引用 -->
           <div class="row">
               <blockquote>
                                        这是一个默认的引用实例
               </blockquote>
               <blockquote>
                                        这是一个带有副标题的引用
                     <small>Someone famous in<cite title="Source title">Source title</cite></small>
               </blockquote>
               <blockquote class="pull-right">
                                        这是一个向右对齐的引用
                    <small>Someone famous in<cite title="Source title">Source title</cite></small>
               </blockquote>
           </div>
           
           <!-- 列表 -->
           <div class="row">
              <ol>
                <li>order list column 1</li>
                <li>order list column 2</li>
                <li>order list column 3</li>
                <li>order list column 4</li>
              </ol>
              <br>
              <ul>
                 <li>unordered list column 1</li>
                 <li>unordered list column 2</li>
                 <li>unordered list column 3</li>
                 <li>unordered list column 4</li>
              </ul>
              <br>
              <dl class="list-inline">
                <dt>description column1</dt>
                <dd>ordinary list column1</dd>
                <dt>description column2</dt>
                <dd>ordinary list column1</dd>
                <dd>ordinary list column1</dd>
                <dd>ordinary list column1</dd>
                <dd><details>child list</details></dd>
              </dl>
           </div>
           
           <!-- 代码显示 -->
           <div class="row">
             <div class="col-md-6">
                <pre><!-- 多行代码显示 -->
                &lt;article&gt;
                &lt;h1&gt;Article Heading&lt;/h1&gt;
                &lt;/article&gt;
                </pre>
             </div>
             <div class="col-md-6">
                <p><code>&lt;header&gt;</code></p><!-- 单行代码显示 -->
                <p><code>&lt;article&gt; </code></p>
                <p><var>x</var><var>=</var><var>a</var><var>b</var><var>+</var><var>y</var></p>
                <p><samp>this result is output from a computer program......</samp></p>
                <p><kbd>CTRL+P</kbd></p><!-- 按键提示 -->
             </div>
           </div>
           
           <!-- 表格 -->
           <div class="table-responsive">
             <table class="table table-condensed ">
                <caption>响应式表格布局</caption>
                <thead>
                  <tr >
                  <th>产品名称</th>
                  <th>出货日期</th>
                  <th>当前状态</th>
                  </tr>
                </thead>
                <tbody>
                   <tr class="active">
                   <td>iphone 4</td>
                   <td>05/26/11</td>
                   <td>已出货</td>
                   </tr>
                   <tr class="danger">
                   <td>iphone 5</td>
                   <td>06/13/12</td>
                   <td>出货中</td>
                   </tr>
                   <tr class="success">
                   <td>iphone 6</td>
                   <td>08/06/13</td>
                   <td>已收货</td>
                   </tr>
                   <tr class="warning">
                   <td>iphone 7</td>
                   <td>03/26/14</td>
                   <td>待确认</td>
                   </tr>
                </tbody>
                <tfoot>
                  <tr></tr>
                </tfoot>
             </table>
           </div>
           <br>
           <div class="row">
              <table class="table table-striped table-bordered table-hover" style="border: 3px solid red;">
                 <tr style="border: 1px solid blue;">
                   <td>名称</td>
                   <td>城市</td>
                 </tr>
                 <tr>
                   <td>中国</td>
                   <td>上海</td>
                 </tr>
                 <tr>
                   <td>美国</td>
                   <td>洛山矶</td>
                 </tr>
                 <tr>
                   <td>意大利</td>
                   <td>西西里</td>
                 </tr>
              </table>
           </div>
           <div class="row"></div>
           <div class="row"></div>
      </div>
   </body>
</html>