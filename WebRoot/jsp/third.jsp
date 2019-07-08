<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>third.jsp</title>
      <meta charset="UTF-8">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <!--IE支持通过特定的 <meta> 标签来确定绘制当前页面所应该采用的 IE版本。edge mode，通知 IE采用其所支持的最新的模式  -->
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      <!--根据 HTML5 规范，在引入 CSS 和 JavaScript 文件时一般不需要指定 type 属性  -->
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <style type="text/css">
        body {
         margin-top:50px;
         margin-left:20px;
         position:relative;
      }
      
       @media screen and (min-width:768px) {
        
           .container {
              width:750px;
           }
        }
        
       ul.nav-pills {
			
			position: relative;
		}
		div.col-sm-9 div {
		    top:0px;
			height: 80px;
			font-size: 12px;
		}
      </style>
      
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script type="text/javascript">
       $(function(){
    	   removeSection = function(e) {
    		   
    		   //移除所选当前元素
               $(e).parents(".section").remove();
               
               //当通过 JavaScript 调用 scrollspy 方法时，需要调用 .refresh 方法来更新 DOM。
               //这在 DOM 的任意元素发生变更（即，添加或移除了某些元素）时非常有用
               $('[data-spy="scroll"]').each(function () {
                   var $spy = $(this).scrollspy('refresh')
               });
           }
    	   
			//可以通过 JavaScript 调用滚动监听，选取要监听的元素，然后调用 .scrollspy() 函数：
           $("#myScrollspy").scrollspy();
           
           //每当一个新项目被滚动监听激活时，触发该事件。
           $('#myScrollspy').on('activate.bs.scrollspy', function () {
               var currentItem = $(".nav li.active > a").text();
               $("#activeitem").html("目前您正在查看 - " + currentItem);
           });
           
           //激活标签页元素和内容容器。标签页需要用一个 data-target 或者一个指向 DOM 中容器节点的 href
           //两种方法定位所需要展示 的<a>标签
           //$('#myTab a:first').tab('show');
           //$('#myTab a:last').tab('show');
           $('#myTab li:eq(0) a').tab('show');//<li>标签下的第n+1个<a>标签,索引值以0开始
           
           $('a[data-toggle="tab"]').on('shown.bs.tab',function(e){
        	   var activeTab=$(e.target).text();
        	   var previousTab=$(e.relatedTarget).text();
        	 
        	  $("#active-tab span").html(activeTab);
        	  $("#previous-tab span").html(previousTab);
//         	   $("#activeSpan").html(activeTab);
//         	   $("#previousSpan").html(previousTab);
           });
         
    	 });
        
       
        
         function showName(){
//         	var username=$("#username").val();
//         	 alert(username);
        	/* $(function(){
        		//获取jquery的版本号
        		alert(jQuery.fn.jquery);
        	}); */ 
//         	$("#myModal").show(true);
//         	$("#opeModal").modal({keyboard:false});
         }
      
      </script>
      
 </head>
 <body>
 <h4>这是一个纵向导航栏</h4>
   <div class="row pull-left">
   <nav id="myScrollspy_2" class="col-sm-3 ">
     <div class="container-fluid ">
         <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="80">
           <li><a href="#section1">Section 1</a></li>
           <li><a href="#section2">Section 2</a></li>
           <li><a href="#section3">Section 3</a></li>
           <li class="dropdown">
           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Section 4</a>
              <ul class="dropdown-menu">
                <li><a  href="#section41">Section 4_1</a></li>
           		<li><a  href="#section42">Section 4_2</a></li>
              </ul>
           </li>
           <li><a href="#section5">Section 5</a></li>
         </ul> 
       </div>
   </nav>
   <div class="col-sm-9" data-spy="scroll" data-target="#myScrollspy_2" data-offset="0"
        style="height:200px;overflow:auto; position: relative;">
    <div id="section1">
	    <h4 >iOS</h4>
	    <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
	        TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。
	    </p>
    </div>
    <div id="section2">
	    <h4 >SVN</h4>
	    <p>Apache Subversion，通常缩写为 SVN，是一款开源的版本控制系统软件。Subversion 由 CollabNet 公司在 2000 年创建。但是现在它已经发展为 Apache Software Foundation 的一个项目，因此拥有丰富的开发人员和用户社区。
	    </p>
    </div>
    <div id="section3">
	    <h4 >jMeter</h4>
	    <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。
	    </p>
    </div>
    <div id="section41">
	    <h4 >EJB</h4>
	    <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
	    </p>
    </div>
    <div id="section42">
	     <h4 >jasper</h4>
	     <p>JasperReport是一个强大、灵活的报表生成工具，能够展示丰富的页面内容，并将之转换成PDF，HTML，或者XML格式。该库完全由Java写成，可以用于在各种Java应用程序，包括J2EE，Web应用程序中生成动态内容。</p>
    </div>
    <div id="section5">
	    <h4 >Spring</h4>
	    <p>Spring 框架是一个开源的 Java 平台，为快速开发功能强大的 Java 应用程序提供了完备的基础设施支持。
	    </p>
    	<p>Spring 框架最初是由 Rod Johnson 编写的，在 2003 年 6 月首次发布于 Apache 2.0 许可证下。
    	</p>
    </div>
   </div>
   </div>
 <br><br><br><br>
 <h4>这是一个横向导航栏</h4>
   <p id="active-tab"><strong>当前显示标签：</strong><span id="activeSpan"></span></p>
   <p id="previous-tab"><strong>前一个显示标签：</strong><span id="previousSpan"></span></p>
   <nav class="navbar navbar-default navbar-static" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-js-navbar-scrollspy-2">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand">导航栏标题</a>
        </div>
        <div id="myNavExample" class="collapse navbar-collapse bs-js-navbar-scrollspy-2">
        <ul id="myTab" class="nav nav-tabs ">
           <li><a data-toggle="tab" href="#home">首页</a></li>
           <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Apache<span class="caret"></span></a>
              <ul class="dropdown-menu">
                    <li><a data-toggle="tab" href="#hadoop">Hadoop</a></li>
                    <li><a data-toggle="tab" href="#aurora">Aurora</a></li>
                    <li><a data-toggle="tab" href="#celix">Celix</a></li>
              </ul>
            </li>
           <li><a data-toggle="tab" href="#ruby">Ruby</a></li>
           <li><a data-toggle="tab" href="#php">PHP</a></li>
           <li><a data-toggle="tab" href="#perl">Perl</a></li>
        </ul>
        </div>
      </div>
   </nav>
   <div id="myTabContent" class="tab-content">
     <div class="tab-pane fade in active" id="home">
      <p>编程语言（programming language），是用来定义计算机程序的形式语言。
	      它是一种被标准化的交流技巧，用来向计算机发出指令。
	      一种计算机语言让程序员能够准确地定义计算机所需要使用的数据，并精确地定义在不同情况下所应当采取的行动。[1]</p>
     </div>
     <div class="tab-pane fade " id="hadoop">
	     <p> Hadoop实现了一个分布式文件系统（Hadoop Distributed File System），简称HDFS。
	     HDFS有高容错性的特点，并且设计用来部署在低廉的（low-cost）硬件上；
	           而且它提供高吞吐量（high throughput）来访问应用程序的数据，适合那些有着超大数据集（large data set）的应用程序。
	     HDFS放宽了（relax）POSIX的要求，可以以流的形式访问（streaming access）文件系统中的数据。</p>
     </div>
     <div class="tab-pane fade " id="aurora">
     <p>Aurora runs applications and services across a shared pool of machines, and is responsible for keeping them running, forever.
      When machines experience failure, Aurora intelligently reschedules those jobs onto healthy machines.</p>
     </div>
     <div class="tab-pane fade " id="celix">
     <p>Apache Celix is an implementation of the OSGi specification adapted to C.
      It will follow the API as close as possible, 
      but since the OSGi specification is written primarily for Java, 
      there will be differences (Java is OO, C is procedural). 
      An important aspect of the implementation is interoperability between Java and C. 
      This interoperability is achieved by porting and implementing the Remote Services specification in Celix.</p>
     </div>
     <div class="tab-pane fade " id="ruby">
     <p>Ruby，一种简单快捷的面向对象（面向对象程序设计）脚本语言，在20世纪90年代由日本人松本行弘(Yukihiro Matsumoto)开发，遵守GPL协议和Ruby License。
	     它的灵感与特性来自于 Perl、Smalltalk、Eiffel、Ada以及 Lisp 语言。
	     由 Ruby 语言本身还发展出了JRuby（Java平台）、IronRuby（.NET平台）等其他平台的 Ruby 语言替代品。
	     Ruby的作者于1993年2月24日开始编写Ruby，直至1995年12月才正式公开发布于fj（新闻组）。
	     因为Perl发音与6月诞生石pearl（珍珠）相同，因此Ruby以7月诞生石ruby（红宝石）命名。</p>
     </div>
     <div class="tab-pane fade " id="php">
     <p>PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。
	     语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。
	   PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。
	     它可以比CGI或者Perl更快速地执行动态网页。
	     用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；
	   PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。</p>
     </div>
     <div class="tab-pane fade " id="perl">
     <p>Perl借取了C、sed、awk、shell 脚本语言以及很多其他程序语言的特性，其中最重要的特性是它内部集成了正则表达式的功能，
	     以及巨大的第三方代码库CPAN。
	     简而言之，Perl像C一样强大，像awk、sed等脚本描述语言一样方便，
	     被Perl语言爱好者称之为“一种拥有各种语言功能的梦幻脚本语言”、“Unix 中的王牌工具”</p>
     </div>
   </div>
   <br><br>
   <h4>这是另一个导航栏</h4>
     <nav id="myScrollspy" class="navbar navbar-default navbar-static" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" 
              data-toggle="collapse" data-target=".bs-js-navbar-scrollspy">
              <span class="sr-only">切换导航</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              </button>
          <a class="navbar-brand">导航标题</a>
        </div>
        <div class="collapse navbar-collapse bs-js-navbar-scrollspy">
        <ul class="nav navbar-nav">
           <li class="active"><a href="#ios">iOS</a></li>
           <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Java<span class="caret"></span></a>
              <ul class="dropdown-menu" style="font-style: italic;">
                    <li><a href="#jmeter">jmeter</a></li>
                    <li><a href="#ejb">EJB</a></li>
                    <li><a href="#jasper">Jasper Report</a></li>
              </ul>
            </li>
           <li><a href="#svn">SVN</a></li>
           <li><a href="#spring">Spring</a></li>
        </ul>
        </div>
      </div>
   </nav>
   <!--向您想要监听的元素（通常是 body）添加 data-spy="scroll"  -->
   <!--添加带有 Bootstrap .nav 组件的父元素的 ID 或 class 的属性 data-target  -->
   <!--当计算滚动位置时，距离顶部的偏移像素 data-offset -->
   <!--  -->
   <div data-spy="scroll" data-target="#myScrollspy" data-offset="0"
        style="height:200px;overflow:auto; position: relative;">
     <div class="section">
     <h4 id="ios">iOS<small><a href="#" onclick="removeSection(this);">&times;删除该部分</a></small></h4>
    <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
        TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。
    </p>
    </div>
    <div class="section">
    <h4 id="svn">SVN</h4>
    <p>Apache Subversion，通常缩写为 SVN，是一款开源的版本控制系统软件。Subversion 由 CollabNet 公司在 2000 年创建。但是现在它已经发展为 Apache Software Foundation 的一个项目，因此拥有丰富的开发人员和用户社区。
    </p>
    </div>
    <div class="section">
    <h4 id="jmeter">jMeter</h4>
    <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。
    </p>
    </div>
    <div class="section">
    <h4 id="ejb">EJB</h4>
    <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
    </p>
    </div>
    <div class="section">
     <h4 id="jasper">jasper</h4>
     <p>JasperReport是一个强大、灵活的报表生成工具，能够展示丰富的页面内容，并将之转换成PDF，HTML，或者XML格式。该库完全由Java写成，可以用于在各种Java应用程序，包括J2EE，Web应用程序中生成动态内容。</p>
    </div>
    <div class="section">
    <h4 id="spring">Spring</h4>
    <p>Spring 框架是一个开源的 Java 平台，为快速开发功能强大的 Java 应用程序提供了完备的基础设施支持。
    </p>
    <p>Spring 框架最初是由 Rod Johnson 编写的，在 2003 年 6 月首次发布于 Apache 2.0 许可证下。
    </p>
    </div>
   </div>
   <span id="activeitem" style="color:red;"></span>
   <br><br>
 <h4>测试bootstrap插件</h4>
 <div class="container">
   <div class="form" role="form">
       <label>用户名:</label>
       <input type="text" class="form-control" id="username" placeholder="username">
       <br>
       <label>密码</label>
       <input type="password" class="form-control" id="password" placeholder="password">
       <br>
       <button type="submit" class="btn btn-default" onclick="showName()">提交</button>
       <button type="reset" id="res" class="btn btn-danger">重置</button>
   </div>
 </div>
 <br><br>
 <!--data-toggle="modal"，HTML5 自定义的 data 属性 data-toggle 用于打开模态窗口。  -->
 <!--data-dismiss="modal"，是一个自定义的 HTML5 data 属性。在这里它被用于关闭模态窗口。 -->
 <!--class="close"，close 是一个 CSS class，用于为模态窗口的关闭按钮设置样式。  -->
 <!--aria-hidden="true" 用于保持模态窗口不可见  -->
 <div class="container">
   <h4>创建一个模态框Modal</h4>
   <button type="button" id="opeModal" class="btn btn-primary" data-toggle="modal" data-target="#myModal">弹出modal</button>
   <div class="modal fade" id="myModal" role="dialog" tabindex="-1"
    aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
		     <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h5 class="modal-title" id="myModalLabel">模态框(Modal)标题</h5>
		     </div>
		     <div class="modal-body">
		        在这里添加文本
		     </div>
		     <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</button>
		        <button type="submit" class="btn btn-primary">提交更改</button>
		     </div>
	     </div>
     </div>
   </div>
 </div>
 </body>
 </html>