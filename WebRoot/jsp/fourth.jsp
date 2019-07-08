<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>fourth.jsp</title>
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
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script type="text/javascript">
         
          $(function(){
        	  
        	  $('a[data-toggle="tooltip"]').tooltip();
        	  $('button[data-toggle="tooltip"]').tooltip();
        	  
        	 // $('.show-tooltip').tooltip('show');
        	  $('.show-tooltip').on('show.bs.tooltip',function(){
        		  alert("show message on");
        	  });
        	  
        	  $('a[data-toggle="popover"]').popover();
        	  $('button[data-toggle="popover"]').popover();
        	  
        	  $('.popover-show').popover('show');
        	  $('.popover-hide').popover('hide');
        	  $('.popover-destroy').popover('destroy');
        	  $('.popover-toggle').popover('toggle');
        	  
        	  $('.popover-options button').popover({html:true});
        	  
        	  $('.close').click(function(){
        		  $('.alert').alert('close');
        	  });
        	  
        	  $('.alert').bind('close.bs.alert',function(){
        		  alert("警告消息框正在被 关闭。"); 
        	  });
        	  
        	  
        	  $('.alert').bind('closed.bs.alert',function(){
        		  alert("警告消息框被关闭。"); 
        	  });
        	  
        	  $('.btn-primary').click(function(){
        		  $(this).button('loading').delay(1000).queue(function(){      			  
        		  
        		     $(this).button('reset');
        		  });
                
        	  });
        	   
        	  $('.btn-danger').click(function(){
        		  $(this).button("loading").delay(1000).queue(function(){
        			  //自定义的string需要在标签中增加data-自定义string-text=""这一属性
        			  $(this).button("restart");
        		  });
        	  });
        	  
          });
      
      </script>
 </head>
<!--data-toggle="tooltip/popover"  -->
<!--data-placement="left/right/top/bottom/auto"  规定如何定位弹出框-->
<!--title=  -->
<!--data-animation="true"  向弹出框应用 CSS 褪色过渡效果。-->
<!--data-trigger="click/hover/focus/manual"  定义如何触发弹出框/提示框，可以传递多个触发器，每个触发器之间用空格分隔。-->
<!--data-html  向弹出框/提示框插入 HTML。如果为 false，jQuery 的 text 方法将被用于向 dom 插入内容-->
<!--data-selector 如果提供了一个选择器，弹出框对象将被委派到指定的目标  -->
<!--data-delay 延迟显示和隐藏提示框和弹出框的毫秒数 - 对 manual 手动触发类型不适用。如果提供的是一个数字，那么延迟将会应用于显示和隐藏。  -->
<!--data-container 向指定元素追加弹出框。  -->   
 <body>
 <p>提示框Tooltip</p>
 <div class="container">
  <div class="row">
   <a href="#" data-toggle="tooltip" title="默认的tooltip显示方式">链接1</a>&nbsp;&nbsp;
   <a href="#" data-toggle="tooltip" title="左侧的tooltip显示" data-placement="left">链接2</a>&nbsp;
   <a href="#" data-toggle="tooltip" title="右侧的tooltip显示" data-placement="right">链接3</a>&nbsp;
   <a href="#" data-toggle="tooltip" title="顶部的tooltip显示" data-placement="top">链接5</a>&nbsp;
   <a href="#" data-toggle="tooltip" title="底部的tooltip显示" data-placement="bottom" data-trigger="click">链接4</a>&nbsp;
   <a href="#" data-toggle="tooltip" title="自适应的tooltip显示" data-placement="auto">链接6</a>&nbsp;&nbsp;
   <a class="show-tooltip" href="#" data-toggle="tooltip" title="js调用显示提示">链接7</a>&nbsp;&nbsp;
   </div>
   <br>
   <div class="row">
     <button type="button" class="btn btn-default" data-toggle="tooltip" data-animation="true" data-placement="right" title="按钮提示">显示按钮1 </button>&nbsp;&nbsp;
     <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="按钮提示">显示按钮2 </button>&nbsp;&nbsp;
     <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="按钮提示">显示按钮 3</button>&nbsp;&nbsp;
     <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="按钮提示">显示按钮4 </button>
   </div>
 </div>
 <br><br>
 <p>弹出框Popover</p>
 <div class="container">
  <div class="row">
   <a href="#" data-toggle="popover" title="默认的popover显示方式">链接8</a>&nbsp;&nbsp;
   <a href="#" data-toggle="popover" title="左边的popover显示方式" data-placement="left">链接9</a>&nbsp;&nbsp;
   <a href="#" data-toggle="popover" title="右边的popover显示方式" data-placement="right">链接10</a>&nbsp;&nbsp;
   <a href="#" data-toggle="popover" title="顶部的popover显示方式" data-placement="top">链接11</a>&nbsp;&nbsp;
   <a href="#" data-toggle="popover" title="底部的popover显示方式" data-placement="bottom">链接12</a>&nbsp;&nbsp;
   <a href="#" data-toggle="popover" title="自适应的popover显示方式" data-placement="auto top">链接13</a>&nbsp;&nbsp;
 </div>
 <br><br>
 <div class="row">
    <button type="button" class="btn btn-default" data-title="左侧popover标题" data-container="body" data-content="左侧的popover中的一些内容" data-toggle="popover" data-placement="left">弹出框按钮1</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default" data-title="右侧popover标题" data-container="body" data-content="右侧的popover中的一些内容" data-toggle="popover" data-placement="right">弹出框按钮2</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default" data-title="顶部popover标题" data-container="body" data-content="顶部的popover中的一些内容" data-toggle="popover" data-placement="top">弹出框按钮3</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default" data-title="底部popover标题" data-container="body" data-content="底部的popover中的一些内容" data-toggle="popover" data-placement="bottom">弹出框按钮4</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default" data-title="自适应popover标题" data-container="body" data-content="自适应的popover中的一些内容" data-toggle="popover" data-placement="auto">弹出框按钮5</button>&nbsp;&nbsp;
 </div>
 <br><br>
 <div class="row">
    <button type="button" class="btn btn-default popover-show" data-title="左侧popover标题" data-container="body" data-content="左侧的popover中的一些内容" data-toggle="popover" data-placement="left">弹出框按钮6</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default popover-hide" data-title="右侧popover标题" data-container="body" data-content="右侧的popover中的一些内容" data-toggle="popover" data-placement="right">弹出框按钮7</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default popover-destroy" data-title="顶部popover标题" data-container="body" data-content="顶部的popover中的一些内容" data-toggle="popover" data-placement="top">弹出框按钮8</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default popover-toggle" data-title="底部popover标题" data-container="body" data-content="底部的popover中的一些内容" data-toggle="popover" data-placement="bottom">弹出框按钮9</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-default popover-options" data-title="popover-options标题" data-container="body" data-content="popover-options中的一些内容" data-toggle="popover" data-placement="auto">弹出框按钮10</button>&nbsp;&nbsp;
 </div>
 <br><br>
 <p>警告框alert</p>
 <div class="row">
   <div class="alert alert-warning">
     <a href="#" class="close" data-dismiss="alert" aria-hidden="true" >&times;</a>
     <strong>警告！您的输入有错误！</strong>
   </div>
 </div>
 <br><br>
 <p>一些按钮操作</p>
 <div class="row">
   <button  type="button" class="btn btn-default" data-loading-text="Loading......">弹出框按钮11</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-primary" data-toggle="button" >弹出框按钮12</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-primary" data-toggle="button">弹出框按钮13</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-primary" >弹出框按钮14</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-danger" data-toggle="button" data-restart-text="重新开始">弹出框按钮15</button>&nbsp;&nbsp;
 </div>
 </div>
 <br><br>
 <p>按钮复选框</p>
 <div class="container">
   <div class="row">
    <div class="btn-group" data-toggle="buttons">
       <label class="btn btn-success">
          <input type="checkbox">复选框按钮1
       </label>
       <label class="btn btn-success">
          <input type="checkbox">复选框按钮2
       </label>
       <label class="btn btn-success">
          <input type="checkbox">复选框按钮3
       </label>
    </div>  
    </div> 
    <br><br>
 	<p>按钮单选框</p>
    <div class="row">
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-warning">
          <input type="radio" name="options" id="option1">单选按钮1
        </label>
        <label class="btn btn-warning">
          <input type="radio" name="options" id="option2">单选按钮2
        </label>
        <label class="btn btn-warning">
          <input type="radio" name="options" id="option3">单选按钮3
        </label>
      </div>
    </div>
 </div>
 </body>
 </html>