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
    		 $("#communicatePeopleModal").on('shown.bs.modal',function(){
	    		 $('#multiselect').multiselect();
    		 });
    	 }); 
    	 
    	 $("#closeAddBtn").click(function(){
	    	 $("#communicatePeopleModal").modal("hide");
    	 });
    	 
   
      });
      
      
    </script>
</head>
 <body >
  <br>
  <div id="preReqCommunicate" class="container">
     <form action="" role="form" enctype="multipart/form-data">
       <div id="referSystem1" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>涉及系统:</label>
       <div class="input-group col-sm-5">
       <select class="form-control" >
            <option>系统名称一</option>
            <option>系统名称二</option>
            <option>系统名称三</option>
            <option>系统名称四</option>
            <option>系统名称五</option>
       </select>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="businessRiskRate1" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*业务风险评估:</span></label>
       <div class="input-group col-sm-8">
       <textarea rows="2" class="form-control"></textarea>
       </div>
       <div class=" col-sm-2">
       <button type="button" class="btn btn-primary">编辑</button>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="reqAnalysisResult1" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>需求分析意见:</label>
       <div class="input-group col-sm-8">
       <textarea rows="2" class="form-control"></textarea>
       </div>
       <div class=" col-sm-2">
       <button type="button" class="btn btn-primary">提交</button>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="addCommunitePerson" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>添加沟通人员:</label>
       <div class="input-group col-sm-4">
       <button id="addCommunicatePeople" type="button" class="btn btn-default" data-toggle="modal" >添加沟通人员</button>
       </div>
       </div>
       <br>
       <div id="comment" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>添加意见:</label>
       <div class="input-group col-sm-10">
       <textarea rows="2" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="uploadFiles" class="form-group">
          <label class="col-sm-2 pull-left">上传文件：</label>
          <input id="file-zh" name="file-fr[]" type="file" multiple>
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
	       <tr>
	         <td>1楼</td>
	         <td>2016-10-13 15:35:20</td>
	         <td>王小明</td>
	         <td>这个需求中有缺陷</td>
	       </tr>
	       </tbody>
	     </table> 
	     </div>
     </form>
  </div>
  <div class="modal fade" id="communicatePeopleModal" data-backdrop="static"  tabindex="-1" role="dialog" aria-labelledby="addCommPeopleLabel" aria-hidden="true">
    <div id="addCommModalDialog" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="closeCommModal" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h5 class="modal-title" id="addCommPeopleLabel">添加沟通人员</h5>
            </div>
        	<div class="modal-body">
        	  <div class="container">
		        <div class="row">
		    	<div class="col-xs-5">
		    		<select name="from" id="multiselect" class="form-control" size="8" multiple="multiple">
		    			<option value="1">张三</option>
		    			<option value="2">李四</option>
		    			<option value="2">王五</option>
		    			<option value="2">赵麻子</option>
		    			<option value="3">大头</option>
		    		</select>
		    	</div>
		    	<div class="col-xs-2">
		    		<button type="button" id="multiselect_rightAll" class="btn btn-block"><i class="glyphicon glyphicon-forward"></i></button>
		    		<button type="button" id="multiselect_rightSelected" class="btn btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
		    		<button type="button" id="multiselect_leftSelected" class="btn btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
		    		<button type="button" id="multiselect_leftAll" class="btn btn-block"><i class="glyphicon glyphicon-backward"></i></button>
		    	</div>
		    	<div class="col-xs-5">
		    		<select name="to" id="multiselect_to" class="form-control" size="8" multiple="multiple"></select>
		    	</div>
		    	</div>
      		</div>
            </div>
            <div class="modal-footer">
                <button id="saveCommunicatePeopleBtn" type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
                <button id="closeAddBtn" type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
  </div>
 </body>
 </html>