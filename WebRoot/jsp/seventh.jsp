<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
      <title>seventh.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
       <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
       
      
     <!--  <link href="../css/bootstrap.min.css" rel="stylesheet"> -->
      <link href="../css/bootstrap-datetimepicker.css" rel="stylesheet">
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
      
      .input-search {
      
         border-radius:8px;
         background-color:silver;
         border-top-color:silver;
         border-bottom-color:silver;
         border-left-color:silver;
         border-right-color:silver;
         vertical-align:middle;
      
      }
      
      .socials {
		 padding: 10px;
		}
		
		#warningwindow {
		  
		  position:absolute;
		  display:none; 
		  top:350px;
		  left:250px;
		  z-index:2;
		  width:250px;
		  height:75px;
/* 		  border:0px solid red; */
		
		}
		
		#testhide {
		   position:absolute;
		   display:none;
		   margin-top:0px;
		   width:200px;
		   height:150px;
		   border:1px solid green; 
		   z-index:3;
		   opacity:1;
		   
		}
		
		#closeDiv {
		   position:relative;
		  
 		   margin-left:100px; 
		   cursor:pointer;
		   font-size:x-large;
		}
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
      <!-- <script type="text/javascript" src="../js/jquery-1.11.1.js"></script>
      <script type="text/javascript" src="../js/bootstrap.js"></script> -->
      <script src="../js/moment.js"></script>
      <script src="../js/bootstrap-datetimepicker.js"></script>
     <!--  <script src="../js/bootstrap-datetimepicker.zh-CN.js"></script> -->
     <!--  <script src="../js/moment-with-locales.js"></script> -->
   
      
      <script type="text/javascript">
     
         
          $(function(){
        	  var filenames="";
        	  $("#fileupload").change(function(){
        		  if($("#fileupload")[0].files.length >= 1){
        			  for(var i = 0; i < $("#fileupload")[0].files.length; i++){
        				  filenames=filenames+$("#fileupload")[0].files[i].name+",";
        			  }
        			  
        		  }else{
        			  alert("this is an error");
        		  }
        		  
            	  $("#filenames").html(filenames);
        	  });
        	  
        	
        	  $("#showHello").show("slow",function(){
        		  
        		  $(this).text("Animation Done...");
        	  });
          });
          
          var alertwin="<div class=\"alert alert-warning\">"
    		  +"<button class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\"><span>&times;</span></button>"
    		  +"<p><strong>Warning!</strong></p>"
    		  +" <small>Best check yourself, you're not looking too good.</small>"
    		  +"<br>"
    		  +"<button type=\"submit\" class=\"btn btn-primary\">提交</button>"
    		  +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
    		  +"<button type=\"reset\" class=\"btn btn-primary\">重置</button>";
          //警告框的显示与隐藏
          $(function(){
        	  
        	  $('div[class="alert alert-warning"]').click(function(){
        		 alert("alert window will be closed");

        	  });
             
     
        	  $("#warningbtn").click(function(){
        		 
        		  $("#testhide").show("slow");
        	  });
          });
          
          $(function(){
    		  
    		  $("#warningbtnbootstrap").click(function(){
    			  $("#warningwindow").show();
    			  $("#warningwindow").html(alertwin);
    		  });
    		  
    		  $('button[type="submit"]').click(function(){
    			  
    			  
    		  });
    	  });
          
          $(function(){
        	  
        	  $("#closeDiv").click(function(){
        		  
        		  $("#testhide").hide();
        		  
        	  });
        	  
          });
          
          $(function () {
        	     $('#datetimepicker').datetimepicker({
        	   	  
        	   	  defaultDate: "09/28/2016",
        	   	  format:"DD/MM/YYYY h:mm A"
        	     });
        	 });
         
      </script>
    <!--   <script>
		 (function(d, s, id) {
					var js, fjs = d.getElementsByTagName(s)[0];
					if (d.getElementById(id)) return;
					js = d.createElement(s); js.id = id;
					js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
					fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));
		</script>
		<script>
				!function(d,s,id){
				var js,fjs=d.getElementsByTagName(s)[0];
				if(!d.getElementById(id)){
					js=d.createElement(s);
					js.id=id;
					js.src="//platform.twitter.com/widgets.js";
					fjs.parentNode.insertBefore(js,fjs);
					}
				}(document,"script","twitter-wjs");
		</script> -->
 </head>
 <body style="background-color: pink;">
 <br><br>
 <h4>创建一个顶部固定的导航栏</h4>
 <div class="navbar navbar-inverse navbar-fixed-top ">
   <div class="navbar-inner">
   <div class="container-fluid">
     <ul class="nav navbar-nav pull-left">
       <li class="active"><a href="#" class="navbar-brand">runoob</a></li>
       <li ><a href="#">About</a></li>
       <li ><a href="#">Portfolio</a></li>
       <li ><a href="#">Contact</a></li>
       <li >
       <a href="#" class="dropdown-toggle" data-toggle="dropdown">
       Services
       <span class="caret"></span>
       <span class="sr-only"></span></a>
         <ul class="dropdown-menu">
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Web Test</a></li>
         </ul>
       </li>
     </ul>
     <div class=" navbar-left">
       <form class="navbar-form" role="form">
         <input type="text" class="input-search" placeholder="search">
         <a href="#"><span class="glyphicon glyphicon-search" style="color: rgb(255, 255, 255);"></span></a>
       </form>
     </div>
     <ul class="nav navbar-nav pull-right">
       <li>
       <a href="# " class="dropdown-toggle" data-toggle="dropdown">
       Social<span class="caret"></span></a>
       <ul class="dropdown-menu">
            <li class="socials"><!-- 将这个标签放置在要渲染的+ 1按钮的位置 -->
				<a href="">Google</a>
			</li>
			<li class="socials"><div class="fb-like" data-send="false" data-width="150" data-show-faces="true"></div>
			   
			</li>
			<li class="socials"><a href="http://www.baidu.com/" class="twitter-share-button">Twitter</a>
				
			</li>
       </ul>
       
       </li>
     </ul>
   </div>
  </div>
 </div>
 <div class="container">
   <input id="fileupload" type="file" multiple>
   &nbsp;&nbsp;&nbsp;
   <span id="filenames"></span>
 </div>
 <br><br>
 <h5>这是一个面包屑导航</h5>
 <div class="container">
   <div class="row">
      <ol class="breadcrumb pull-left">
        <li ><a href="#">Home</a></li>
        <li><a href="#">VC++</a></li>
        <li class="active"><a href="#">C++ Builder</a></li>
        <li><a href="#">Delphi</a></li>
        <li><a href="#">powerbuilder</a></li>
      </ol>
   </div>
   <br><br>
   <h5>分页</h5>
   <div class="row">
       <ul class="pagination pagination-sm">
         <li><a href="#">首页</a></li>
         <li><a href="#">&laquo;</a></li>
         <li><a href="#">1</a></li>
         <li><a href="#">2</a></li>
         <li class="active"><a href="#">3</a></li>
         <li><a href="#">4</a></li>
         <li><a href="#">5</a></li>
         <li><a href="#">6</a></li>
         <li><a href="#">&raquo;</a></li>
         <li><a href="#">尾页</a></li>
       </ul>
   </div>
   <div class="row">
     <ul class="pager">
        <li class="previous"><a href="#">previous</a></li>
        <li class="next pull-left"><a href="#">next</a></li>
     </ul>
   </div>
   <br><br>
   <h5>警告框</h5>
   <div class="row">
      <button id="warningbtnbootstrap" type="button" class="btn btn-warning" >点击弹出Bootstrap风格警告框</button>
      <button id="warningbtn" type="button" class="btn btn-warning" >点击弹出普通风格警告框</button>
      <div id="warningwindow">
      </div>
      </div>
   <br><br>
   <div class="row">
     <div id="testhide">
               测试关闭方法<span id="closeDiv">&times;</span>
        <p><strong>Warning!</strong></p>
        <p><span>Best check yo self, you're not looking too good.</span> </p>
     </div>
   </div>
   <br><br>
   <h5>时间控件</h5>
   <div class="row">
      <div class="col-sm-4" >
        <div class="form-group">
                <div class='input-group date' id='datetimepicker'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
      </div>
   </div>
 </div>
 </body>
 </html>