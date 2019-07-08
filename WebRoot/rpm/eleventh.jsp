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
       
      $(function(){
    	 
    	 
    	  $(".btn-group button").each(function(){
    		  var showModalName=decodeURI(decodeURI(modalName));
    		  if($(this).text()==showModalName){

    			  $(this).css("background-color","blue");
    		  }
    		  if(showModalName=="预需求申请"){
    			  
                  $("#addNewPreReq").show();
                  $("#preReqCommunicate").remove();
                  $("#changeToFormalReq").remove();
                  $("#handleFormalReq").remove();
                  $("#reqFlow").remove();
				  
    		  }
    		  if(showModalName=="验收"){
    			  $("#addNewPreReq").remove();
                  $("#preReqCommunicate").remove();
                  $("#handleFormalReq").remove();
                  $("#changeToFormalReq").remove();
                  $("#reqFlow").show();
    			  $("#acceptanceCheck").show();
         
    		  }
			  if(showModalName=="反馈"){
				  $("#addNewPreReq").remove();
                  $("#preReqCommunicate").remove();
                  $("#handleFormalReq").remove();
                  $("#changeToFormalReq").remove();
                  $("#reqFlow").show();
				  $("#apprise").show();
			  }
			  if(showModalName=="实施结果申请上线"){
				  $("#addNewPreReq").remove();
                  $("#preReqCommunicate").remove();
                  $("#changeToFormalReq").remove();
                  $("#handleFormalReq").remove();
                  $("#reqFlow").show();
				  $("#testFeedback").show();
			  }
			  if(showModalName=="预需求沟通"){
				  $("#addNewPreReq").remove();
                  $("#changeToFormalReq").remove();
                  $("#handleFormalReq").remove();
                  $("#reqFlow").remove();
                  $("#preReqCommunicate").show();
    			  
			  }
			  if(showModalName=="正式需求处理"){
				  $("#addNewPreReq").remove();
				  $("#preReqCommunicate").remove();
                  $("#changeToFormalReq").remove();
                  $("#reqFlow").remove();
                  $("#handleFormalReq").show();
    			  
			  }
			  if(showModalName=="转正式需求"){
				  $("#addNewPreReq").remove();
                  $("#preReqCommunicate").remove();
                  $("#handleFormalReq").remove();
	              $("#reqFlow").remove();
	              $("#changeToFormalReq").show();
				  
			  }
			  if(showModalName=="上线"){
				  $("#addNewPreReq").remove();
                  $("#preReqCommunicate").remove();
                  $("#handleFormalReq").remove();
                  $("#changeToFormalReq").remove();
                  $("#reqFlow").show();
				  $("#applyOnLineTime").show();
				  $("#preReleaseUrl").show();
			  }
    	  });
      });
      
      $("#utilityReq").rating();
      $("#sseInfoService").rating();
      
      $(function(){
    	  
    	 $("#addCommunicatePeople").click(function(){
    	  $("#communicatePeopleModal").modal("show");
    		 $("#communicatePeopleModal").on('shown.bs.modal',function(){
	    		 $('#multiselect').multiselect();
    		 });
    	 }); 
    	 
    	 $("#closeAddBtn").click(function(){
	    	 $("#communicatePeopleModal").modal("hide");
    	 });
    	 
//     	 $("#closeCommModal").click(function(){
//     		 $("#communicatePeopleModal").hide();
//     	 });
    	 
//     	 $("#closeAddBtn").click(function(){
//     		 $("#communicatePeopleModal").hide();
//     	 });
   
      });
      
//      $(document).on('show.bs.modal', '.modal', function(event) {
// 	        $(this).appendTo($('body'));
// 	 }).on('shown.bs.modal', '.modal.in', function(event) {
// 	        setModalsAndBackdropsOrder();
// 	 }).on('hidden.bs.modal', '.modal', function(event) {
// 	        setModalsAndBackdropsOrder();
// 	 });
      
      function setModalsAndBackdropsOrder() {  
          var modalZIndex = 1040;
          $('.modal.in').each(function(index) {
              var $modal = $(this);
              modalZIndex++;
              $modal.css('z-index', modalZIndex);
              $modal.next('.modal-backdrop.in').addClass('hidden').css('z-index', modalZIndex - 1);
          });
          $('.modal.in:visible:last').focus().next('.modal-backdrop.in').removeClass('hidden');
      }
      
    </script>
</head>
 <body >
  <br>
  <div id="addNewPreReq" class="container" hidden="true" >
    <form action="" role="form" enctype="multipart/form-data">
       <div id="reqName" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>需求名称:</label>
       <div class="input-group col-md-9">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
       <div id="reqSummary" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>需求简述:</label>
       <div class="input-group col-md-9">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <div id="sysPageLink" class="form-group">
        <label class="col-sm-2 pull-left">系统页面链接:</label>
        <div class="input-group col-md-9">
       <input type="text" class="form-control">
        </div>
       </div>
       <br>
       <br><br>
       <div id="isSentiveData" class="form-group">
         <label class="col-sm-2 pull-left"><span style="color:red;">*</span>是否敏感数据:</label>
         <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 是
	     </label>
	     <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0"> 否
	     </label>
       </div>
       <br>
       <div id="estimateDate" class="form-group">
          <label class="col-sm-2 pull-left">希望完成日期：</label>
          <div class="input-group date form_datetime col-md-4" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
               <input class="form-control" size="8" type="text" value="" >
				<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>
		   <input type="hidden" id="dtp_input1" value="" /><br/>
       </div>
       <br>
       <div id="attachment" class="form-group">
          <label class="col-sm-2 pull-left">添加附件：</label>
          <input id="file-ch" name="file-fr[]" type="file" multiple>
       </div>
       <br>
       <div id="applicant" class="form-group">
        <label class="col-sm-2 pull-left">申请人:</label>
        <div class="input-group col-md-4">
         <input type="text" class="form-control">
        </div>
       </div>
       <br>
       <div id="department" class="form-group">
        <label class="col-sm-2 pull-left">部门:</label>
        <div class="input-group col-md-4">
       <input type="text" class="form-control ">
       </div>
       </div>
       <br>
       <br>
       <div id="contactWay" class="form-group">
        <label class="col-sm-2 pull-left"> 联系方式:</label>
         <div class="input-group col-md-4">
         <input type="text" class="form-control">
        </div>
       </div>
       <br>
       <div id="tips" class="form-group">
         <span style="color:red;">提交后将自动发送邮件给需求管理员</span>
       </div>
       <br>
    </form>
  </div>
  <div id="preReqCommunicate" class="container" hidden="true">
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
  <div id="handleFormalReq" class="container" hidden="true">
     <form action="" role="form" enctype="multipart/form-data">
       <div id="formalReqNo" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>正式需求编号:</label>
       <div class="input-group col-sm-4">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
       <br>
       <div id="referSystem2" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>涉及系统:</label>
       <div class="input-group col-sm-4">
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
       <label class="col-sm-2 pull-left"><span style="color:red;">*业务风险评估:</span></label>
       <div class="input-group col-sm-8">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="reqAnalysisResult2" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>需求分析意见:</label>
       <div class="input-group col-sm-8">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <div id="preEstimateWorkTime" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>预估工时:</label>
       <div class="input-group col-sm-4">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
       <br>
       <div id="isLiquidateInSse2" class="form-group">
         <label class="col-sm-2 pull-left"><span style="color:red;">*</span>是否所司结算:</label>
         <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 是
	     </label>
	     <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0"> 否
	     </label>
       </div>
       <div id="comment" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>添加意见:</label>
       <div class="input-group col-sm-10">
       <textarea rows="1" class="form-control"></textarea>
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="uploadFiles" class="form-group">
          <div class="col-sm-10">
          <label class="col-sm-2 pull-left">上传文件：</label>
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
  <div id="changeToFormalReq" class="container" hidden="true">
     <form action="" role="form" enctype="multipart/form-data">
       <div id="exportReqApp" class="form-group">
          <div class="col-sm-4 col-sm-offset-1">
          <button class="btn btn-primary">导出需求申请单</button>
          </div>
       </div>
       <br>
       <br>
       <br>
       <div id="estimateWorkTime" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>预估工时:</label>
       <div class="input-group col-sm-4">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
       <br>
       <br>
       <div id="isLiquidateInSse1" class="form-group">
         <label class="col-sm-2 pull-left"><span style="color:red;">*</span>是否所司结算:</label>
         <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 是
	     </label>
	     <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0"> 否
	     </label>
       </div>
       <br>
       <div id="tipTwo" class="form-group">
         <span style="color:red;">请走审批流程</span>
       </div>
       <br>
       <div id="formalSignatureNo" class="form-group">
       <label class="col-sm-2 pull-left"><span style="color:red;">*</span>正式签报编号:</label>
       <div class="input-group col-sm-4">
       <input type="text" class="form-control">
       </div>
       </div>
       <br>
     </form>
  </div>
  <div id="reqFlow" class="container" hidden="true">
     <form action="" role="form" enctype="multipart/form-data" >
       <br>
       <div id="apprise" class="form-group" hidden="true">
        <label class="col-sm-4 pull-left"> 能否满足功能需求:</label>
         <div class="input-group col-md-8">
         <input id="utilityReq" type="text" class="rating" data-size="xs">
        </div>
        <br>
        <label class="col-sm-4 pull-left"> 对信息公司服务:</label>
         <div class="input-group col-md-8">
         <input id="sseInfoService" type="text" class="rating" data-size="xs">
        </div>
       </div>
       <br>
       <br>
       <div id="testFeedback" class="form-group" hidden="true">
         <label class="col-sm-2 pull-left"><span style="color:red;">*</span>测试意见:</label>
         <label class="checkbox">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 测试通过并申请上线
	     </label>
	     <label class="checkbox col-sm-offset-2 pull-left" style="padding-left: 0px;">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0">测试未通过
	     </label>
       </div>
       <br>
       <br>
       <div id="acceptanceCheck" class="form-group" hidden="true">
         <label class="col-sm-2 pull-left"><span style="color:red;">*</span>验收结果:</label>
         <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios1" value="1" checked> 通过
	     </label>
	     <label class="checkbox-inline">
		 <input type="radio" name="optionsRadiosinline" id="optionsRadios2"  value="0"> 不通过
	     </label>
       </div>
       <br>
       <br>
       <div id="applyOnLineTime" class="form-group" hidden="true">
          <label class="col-sm-2 pull-left">申请上线时间：</label>
          <div class="input-group date form_datetime col-md-4" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
               <input class="form-control" size="8" type="text" value="" >
				<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>
		   <input type="hidden" id="dtp_input1" value="" /><br/>
       </div>
       <br>
       <br>
       <div id="preReleaseUrl" class="form-group" hidden="true">
        <label class="col-sm-2 pull-left">预发布链接:</label>
        <div class="input-group col-md-8">
       <input type="text" class="form-control ">
       </div>
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