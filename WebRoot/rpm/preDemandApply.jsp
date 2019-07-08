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
       
    </script>
</head>
 <body >
  <div id="addNewPreReq" class="container">
    <form action="" role="form" enctype="multipart/form-data">
       <div class="row"></div>
       <br>
       <br>
       <div class="row"></div>
       <div id="reqName" class="row form-group">
       <label class="col-md-3 pull-left"><span style="color:red;">*</span>需求名称:</label>
       <div class="input-group col-md-9">
       <input type="text" class="form-control">
       </div>
       </div>
       <div class="row"></div>
       <div id="reqSummary" class="row form-group">
       <label class="col-md-3 pull-left"><span style="color:red;">*</span>需求简述:</label>
       <div class="input-group col-md-9">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <div class="row"></div>
       <div class="row">
	       <div id="sysPageLink" class="form-group">
	        <label class="col-md-3 pull-left">系统页面链接:</label>
	        <div class="input-group col-md-9">
	       <input type="text" class="form-control">
	        </div>
	       </div>
       </div>
       <div class="row"></div>
       <div id="isSentiveData" class="row form-group">
         <label class="col-md-3 pull-left"><span style="color:red;">*</span>是否敏感数据:</label>
         <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 是
	     </label>
	     <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0"> 否
	     </label>
       </div>
       <div class="row"></div>
       <div id="estimateDate" class="form-group">
          <label class="col-md-4 ">希望完成日期：</label>
          <div class="input-group date form_datetime col-md-4" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
               <input class="form-control" size="8" type="text" value="" >
				<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>
		   <input type="hidden" id="dtp_input1" value="" /><br/>
       </div>
       <br>
       <div id="attachment" class="form-group">
          <label class="col-md-3 pull-left">添加附件：</label>
          <input id="file-ch" name="file-fr[]" type="file" multiple>
       </div>
        <div class="row"></div>
       <div id="applicant" class="form-group">
        <label class="col-md-3">申请人:</label>
        <div class="input-group col-md-4">
         <input type="text" class="form-control">
        </div>
       </div>
        <div class="row"></div>
       <div id="department" class="form-group">
        <label class="col-md-3 ">部门:</label>
        <div class="input-group col-md-4">
       <input type="text" class="form-control ">
       </div>
       </div>
       <div class="row"></div>
       <div id="contactWay" class="form-group">
        <label class="col-md-3 "> 联系方式:</label>
         <div class="input-group col-md-4">
         <input type="text" class="form-control">
        </div>
       </div>
       <div class="row"></div>
       <div id="tips" class="form-group">
         <span style="color:red;">提交后将自动发送邮件给需求管理员</span>
       </div>
    </form>
  </div>
 </body>
 </html>