<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>需求统计</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/bootstrap-datetimepicker.4.15.35.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/fileinput.css" rel="stylesheet" media="screen">
      
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
       
      
      
    </script>

</head>
<body >
 <div class="container" style="margin-top: 20px;margin-left: 5px;">
   <div class="row">
   <form role="form">
      <div class="row">
       <div class="col-sm-3 form-group">
          <label class="col-sm-6 pull-left">所属部门：</label>
          <select class="col-sm-6 pull-left  ">
            <option>部门一</option>
            <option>部门二</option>
            <option>部门三</option>
            <option>部门四</option>
            <option>部门五</option>
          </select>
       </div>
        <div class="col-sm-3 form-group">
          <label class="col-sm-6 pull-left">所属系统：</label>
          <select class="col-sm-6 pull-left  ">
            <option>系统一</option>
            <option>系统二</option>
            <option>系统三</option>
            <option>系统四</option>
            <option>系统五</option>
          </select>
       </div>
      
       <div class="col-sm-3 form-group">
          <label class="col-sm-6 pull-left">需求类别：</label>
          <select class="col-sm-6 pull-left ">
            <option>类别一</option>
            <option>类别二</option>
            <option>类别三</option>
            <option>类别四</option>
            <option>类别五</option>
          </select>
       </div>
       <div class="col-sm-3 form-group">
          <label class="col-sm-6 pull-left">需求归属：</label>
          <select class="col-sm-6 ">
            <option>归属一</option>
            <option>归属二</option>
            <option>归属三</option>
            <option>归属四</option>
            <option>归属五</option>
          </select>
       </div>
       </div>  
       <div class="row">
       
       <div class="col-sm-4 form-group">
          <label class="col-sm-4 pull-left">开始日期：</label>
          <div class="input-group date form_datetime col-sm-8 pull-left" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
               <input class="form-control"  type="text" value="" >
				<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>
       </div>
       
       <div class="col-sm-4 form-group">
          <label class="col-sm-4 pull-left">结束日期：</label>
          <div class="input-group date form_datetime col-sm-8 pull-left" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
               <input class="form-control" type="text" value="" >
				<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
            </div>
       </div>
        
       
       <div class="col-sm-4 form-group">
         <button class="btn btn-primary col-sm-4" type="submit">提交</button>
       </div>
       </div>
      </form>
   </div>
  </div>
  <br>
  <div class="container" style="margin-left:5px;">
	  <div class="row">
	     <table class="table table-striped">
	       <thead>
	       <tr>
	         <th>需求编号</th>
	         <th>需求提出人</th>
	         <th>参与人员</th>
	         <th>所处状态</th>
	         <th>涉及系统</th>
	         <th>业务风险评估</th>
	         <th>预估工时</th>
	         <th>实际工时</th>
	       </tr>
	       </thead>
	       <tbody>
	       <tr>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	       </tr>
	       <tr>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	       </tr>
	       <tr>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	       </tr>
	       <tr>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	       </tr>
	       <tr>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	       </tr>
	       <tr>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	         <td></td>
	       </tr>
	       </tbody>
	     </table> 
	  </div>
  </div>
  <br>
    <ul style="list-style-type: none;">
      <li>本周作废预需求<span style="color: red;">3</span>个,</li>
      <li>正式需求<span style="color: red;">15</span>个;</li>
      <li>本月作废预需求<span style="color: red;">3</span>个,</li>
      <li>本月正式需求<span style="color: red;">15</span>个.</li>
    </ul>
  
 </body>
 </html>