<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>first.jsp</title>
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
      <!--自定义css  -->
      <style type="text/css">
        .img-w3r {
          
          border:0; /*当图像呈现时用来移除边框  */
          page-break-inside:avoid; /* 避免图像内的分页符。  */
          max-width:100%, !important; /*用于确定即使图像的宽度超出了容器，它也能被限制在容器内显示。它与 !important 一起使用，来覆盖其他任何破坏这种样式的样式  */
          vertical-align:middle;/*图像会在 div 或者其他元素内垂直居中  */
          height:160px;
          border-radius:6px;/*用来定义相关图像的圆角  */
        
        }
        
        .md1 {
          background-color: silver;
          padding:7px;
          border-radius:6px;
        }
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script type="text/javascript">
      
        
      </script>
 </head>
 <body>
 <p>图像</p>
 <div class="container">
 <p class="md1">
   <img class="img-w3r" alt="" src="../images/JohnMcCarthy01.jpg">
   <span class="">
   John McCarthy was born in Boston, Massachusetts on September 4, 1927 to an Irish immigrant father and a Lithuanian Jewish immigrant mother,[2] John Patrick and Ida Glatt McCarthy. 
   The family was obliged to relocate frequently during the Great Depression, until McCarthy's father found work as an organizer for the Amalgamated Clothing Workers in Los Angeles, California. 
   His father came from the fishing village of Cromane in County Kerry, Ireland.[3] His mother died in 1957.[4]
   </span>
 </p>
 </div>
 <div class="container">
    <img class="hisrc" alt="理查德.马修.斯托曼" src="../images/RichardMatthewStallman.jpg">
 </div>
  <p>缩略图</p>
   <div class="container">
     <div class="row">
    <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
            <img src="../images/113.gif"
                 alt="通用的占位符缩略图">
                 <div class="caption">
                   <h3>缩略图标签</h3>
                <p>一些示例文本。一些示例文本。</p>
                <p>
                    <a href="#" class="btn btn-primary" role="button">按钮</a> 
                    <a href="#" class="btn btn-default" role="button"> 按钮</a>
                </p>
                 </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-3">
        <a href="#" class="thumbnail">
            <img class="img-thumbnail" src="../images/DeployProcess.png"
                 alt="通用的占位符缩略图">
        </a>
    </div>
    <div class="col-sm-6 col-md-3">
        <a href="#" class="thumbnail">
            <img class="img-circle" src="../images/was03.jpg"
                 alt="通用的占位符缩略图">
        </a>
    </div>
	</div>
   </div>
   <br><br>
   <p>警告</p>
   <div class="container">
     <div class="alert alert-info alert-dismissal">
              信息！注意这个信息,这个警告框可以被关闭！
       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>       
     </div>
     <div class="alert alert-success">
                成功，已经完成提交,这个警告框同样可以被关闭
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>     
     </div>
     <div class="alert alert-warning">
                 警告，这个提交有风险
         <a href="#" class="alert-link">这个链接有风险</a>
      </div>
     <div class="alert alert-danger">
                 危险！请检查这个提交
         <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
         <a href="#" class="alert-link">&nbsp;这个链接有危险，慎击</a>
     </div>
     <div class="alert ">这是一个警告！</div>
   </div>
   <br><br>
   <p>进度条</p>
   <div class="container">
     <div class="row">
     <div class="progress" style="background-color: grey;">
        <div class="progress-bar" role="progressbar"
         aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:30%;">
           <span class="sr-only">30%已完成</span>
        </div>
     </div>
     </div>
     <div class="row">
        <div class="progress">
           <div class="progress-bar progress-bar-info" style="width:90%;">信息进度90%</div>
        </div>
     </div>
     <div class="row">
        <div class="progress progress-striped active">
           <div class="progress-bar progress-bar-success" style="width:60%;">成功进度60%</div>
        </div>
     </div>
     <div class="row">
        <div class="progress progress-striped active">
           <div class="progress-bar progress-bar-warning" style="width:25%;">警告进度25%</div>
        </div>
     </div>
     <div class="row">
        <div class="progress progress-striped active">
           <div class="progress-bar progress-bar-danger" style="width:10%;">危险进度10%</div>
        </div>
     </div>
     <p>可堆叠的进度条</p>
     <div class="row">
       <div class="progress progress-striped active" >
         <div class="progress-bar progress-bar-info" style="width:20%;">进度1</div>
         <div class="progress-bar progress-bar-success" style="width:40%;">进度2</div>
         <div class="progress-bar progress-bar-danger" style="width:15%;">进度3</div>
       </div>
     </div>
   </div>
   <br><br>
   <p><span style="color:green;">多媒体对象</span></p>
   <div class="container">
     <div class="media">
        <a href="#" class="pull-left">
          <img class="media-object" alt="媒体对象" src="../images/was-01.jpg" width="100px" height="50px">
        </a>
        <div class="media-body">
          <h4 class="media-heading">这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
        </div>
     </div>
     <div class="media">
        <a href="#" class="pull-right">
          <img class="media-object" alt="媒体对象" src="../images/was-01.jpg" width="100px" height="50px">
        </a>
        <div class="media-body">
          <h4 class="media-heading">这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <div class="media">
        <a href="#" class="pull-left">
          <img class="media-object" alt="媒体对象" src="../images/was-01.jpg" width="100px" height="50px">
        </a>
        <div class="media-body">
          <h4 class="media-heading">这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
          <h4>这是一个媒体对象的标题</h4>
        </div>
     </div>
        </div>
     </div>
   </div>
 </body>
 </html>