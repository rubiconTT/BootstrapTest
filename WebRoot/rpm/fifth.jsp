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
      
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script  src="<%=path %>/js/moment.js"></script> 
	<script  src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script  src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/fileinput/fileinput.js" charset="UTF-8"></script>
    <script type="text/javascript">
    </script>

</head>
 <body >
 <div class="container" style="margin-top: 20px;">
   <div class="row">
   <form role="form" class="form-inline">
      
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
            <input type="text" class="form-control" placeholder="请输入关键词搜索">
            <span class="input-group-addon" style="background-color:rgb(24,142,205);"><i class="glyphicon glyphicon-search"></i></span>
        </div>
        </div>
      </form>
   </div>
  </div>
  <br>
  <div class="container">
	  <div class="row">
	     <table class="table table-striped">
	       <thead>
	       <tr>
	         <th></th>
	         <th>预需求ID</th>
	         <th>正式需求ID</th>
	         <th>需求名称</th>
	         <th>状态</th>
	         <th>创建时间</th>
	         <th>正式审批时间</th>
	         <th>审批人</th>
	         <th>最后沟通人</th>
	         <th>最后沟通时间</th>
	       </tr>
	       </thead>
	       <tbody>
	       <tr>
	         <td><input type="checkbox"></td>
	         <td></td>
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
	         <td><input type="checkbox"></td>
	         <td></td>
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
	         <td><input type="checkbox"></td>
	         <td></td>
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
	         <td><input type="checkbox"></td>
	         <td></td>
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
	         <td><input type="checkbox"></td>
	         <td></td>
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
	         <td><input type="checkbox"></td>
	         <td></td>
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
 </body>
 </html>