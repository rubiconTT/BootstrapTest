<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
    String modalName=request.getParameter("modalName");
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
    <link href="<%=path %>/css/star-rating.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/theme.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/multiselect.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/prettify.css" rel="stylesheet" media="screen">
     <style type="text/css">
       
       .btn-group button {
       
          background-color:black;
          border-left-color: gray;
          border-right-color: gray;
       }
       
        .modal-dialog {
        
         width:80%;
       }
       
       #communicatePeopleModal {
       
         overflow: hidden;
       }
     
     </style>
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script  src="<%=path %>/js/moment.js"></script> 
	<script  src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/starrating/star-rating.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/starrating/theme.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/locales/LANG.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/fileinput/fileinput.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/multiselect/multiselect.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/multiselect/prettify.min.js" charset="UTF-8"></script>
    <script type="text/javascript">
    var modalName = "<%=modalName%>";
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
      
      $("#utilityReq").rating();
      $("#sseInfoService").rating();
      
    </script>
</head>
 <body >
  
  <br>
  <div id="acceptCheck" class="container">
     <form action="" role="form" enctype="multipart/form-data" >
       <br>
       <br>
       <div id="afterOnlineFeedback" class="form-group">
        <label class="col-sm-6 col-md-6 pull-left">需求后续意见反馈:</label>
        <div class="input-group col-sm-12 col-md-12">
       <textarea rows="6" class="form-control "></textarea>
       </div>
       </div>
       <br>
       <div class="row"></div>
       <div class="form-group" >
         <label class="col-sm-6"><span class="" style="color: red">提交后将自动发送邮件给需求管理员</span></label>
       </div>
     </form>
  </div>
 </body>
 </html>