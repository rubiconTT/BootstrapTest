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
  <div id="handleFormalReq" class="container">
     <form action="" role="form" enctype="multipart/form-data">
       <div id="formalReqNo" class="form-group">
       <label class="col-sm-3 pull-left"><span style="color:red;">*</span>正式需求编号:</label>
       <div class="input-group col-sm-6">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
       <br>
       <div id="referSystem2" class="form-group">
       <label class="col-sm-3 pull-left"><span style="color:red;">*</span>涉及系统:</label>
       <div class="input-group col-sm-7">
       <select class="form-control">
            <option>system1</option>
            <option>system2</option>
            <option>system3</option>
            <option>system4</option>
            <option>system5</option>
        </select>
       </div>
       </div>
       <br>
       <br>
       <div id="businessRiskRate2" class="form-group">
       <label class="col-sm-3 pull-left"><span style="color:red;">*业务风险评估:</span></label>
       <div class="input-group col-sm-8">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="reqAnalysisResult2" class="form-group">
       <label class="col-sm-3 pull-left"><span style="color:red;">*</span>需求分析意见:</label>
       <div class="input-group col-sm-8">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <div id="preEstimateWorkTime" class="form-group">
       <label class="col-sm-3 pull-left"><span style="color:red;">*</span>预估工时:</label>
       <div class="input-group col-sm-4">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
       <br>
       <div id="isLiquidateInSse2" class="form-group">
         <label class="col-sm-3 pull-left"><span style="color:red;">*</span>是否所司结算:</label>
         <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 是
	     </label>
	     <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0"> 否
	     </label>
       </div>
       <div id="comment" class="form-group">
       <label class="col-sm-3 pull-left"><span style="color:red;">*</span>添加意见:</label>
       <div class="input-group col-sm-8">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="uploadFiles" class="form-group">
          <div class="col-sm-10">
          <label class="col-sm-3 pull-left">上传文件：</label>
          <input id="file-zh" name="file-fr[]" type="file" multiple>
          </div>
          <div class="col-sm-2">
          <a href="#" class="tooltip-toggle" data-toggle="tooltip" data-placement="bottom" title="发送邮件">
             <span class="glyphicon glyphicon-envelope" style="font-size: 25px;"></span></a>
          </div>
       </div>
       
       <br>
       <div id="communicateInfo" class="form-group">
       <table class="table table-striped">
	       <tbody>
	       <tr>
	         <td>3楼</td>
	         <td>2016-10-14 11:19:45</td>
	         <td>韩梅梅</td>
	         <td>该需求尚需更加明确</td>
	       </tr>
	       <tr>
	         <td>2楼</td>
	         <td>2016-10-13 15:35:20</td>
	         <td>李雷</td>
	         <td>需求中能否增加这方面功能</td>
	       </tr>
	       </tbody>
	     </table> 
	     </div>
     </form>
  </div>
 </body>
 </html>