<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	
%>
<!DOCTYPE html>
<html>
<head>
    <title>fourth.jsp</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/bootstrap-datetimepicker.4.15.35.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/fileinput.css" rel="stylesheet" media="screen">
     <style type="text/css">
       
       .btn-group button {
       
          background-color:black;
          border-left-color: gray;
          border-right-color: gray;
       }
       
       .modal-dialog {
        
         width:80%;
         
       
       }
     
     </style>
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script  src="<%=path %>/js/moment.js"></script> 
	<script  src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/fileinput/fileinput.js" charset="UTF-8"></script>
    <script type="text/javascript">
    
       $(function(){
    	   
    	   $('.form_datetime').datetimepicker({
    	    	locale: moment.locale("zh-CN"),
    	    	 format: 'YYYY-MM-DD',
    	         icons: {
    	             today: 'glyphicon glyphicon-screenshot'
    	         },
    	         showTodayButton: true,
    	         showClear: true
    	    });
       
       });
       $('#file-fr').fileinput({
           language: 'fr',
           uploadUrl:'#####',
           allowedFileExtensions : ['jpg', 'png','gif','html','txt','zip','xlsx','xml','docx','js','doc'],
           textEncoding: 'GBK',
            allowedPreviewTypes:['docx','doc'],
           previewSettings: {
                   image: {width: "160px", height: "160px"},
                   html: {width: "160px", height: "160px"},
                   text: {width: "160px", height: "160px"},
                   video: {width: "160px", height: "160px"},
                   audio: {width: "160px", height: "80px"},
                   flash: {width: "160px", height: "160px"},
                   object: {width: "160px", height: "160px"},
                   pdf: {width: "160px", height: "160px"},
                   other: {width: "160px", height: "160px"}
               },
           
       });
       
       $(function(){
    	   
	       $(".btn-group button[type='button']").each(function(){
	    	   $(this).click(function(){
		    	   var modalName=$(this).text();
		    	   $("#myModalLabel").text(modalName);
		    	   $("#modalContent").load("../rpm/eleventh.jsp?modalName="+encodeURI(encodeURI(modalName)));
	    	   })
		   });
		   
		   $(".close").click(function(){
			   $("#modalContent").html("");
			   $(".btn-group button[type='button']").css("background-color","black");
		   });
	       
	       $("#saveBtn").click(function(){
			   $("#modalContent").html("");
			   $(".btn-group button[type='button']").css("background-color","black");
		   });
       });
    </script>

</head>
 <body >
 <div class="container" style="margin-top: 20px;">
   <div class="row">
   <form role="form" class="form-inline">
      <a href="#"><i class="glyphicon glyphicon-plus"></i>新增</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-edit"></i>编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-trash"></i>删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <div class="checkbox form-group" >
         <label><input type="checkbox">导出需求单</label>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;
      <div class="checkbox form-group">
         <label><input type="checkbox" checked="checked">导出验收单</label>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="form-group">
      <div class="input-group">
            <input type="text" class="form-control" placeholder="search">
            <span class="input-group-addon" style="background-color:rgb(24,142,205);"><i class="glyphicon glyphicon-search"></i></span>
        </div>
        </div>
      </form>
   </div>
  </div>
  <br>
  <div class="container">
    <div class="row">
    <div class="btn-group">
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">预需求申请</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">预需求沟通</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">转正式需求</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">正式需求处理</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">实施结果申请上线</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">上线</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">验收</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#preReqApplyModal">反馈</button>
       </div>
  </div>
  </div>
  <div class="modal fade" id="preReqApplyModal" data-backdrop="static"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h5 class="modal-title" id="myModalLabel"></h5>
            </div>
        	<div class="modal-body">
        	  <div id="modalContent">
        	  </div>
            </div>
            <div class="modal-footer">
                <button id="saveBtn" type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                <button id="submitBtn" type="submit" class="btn btn-default disabled">提交</button>
            </div>
        </div>
    </div>
  </div>
  
  
 </body>
 </html>