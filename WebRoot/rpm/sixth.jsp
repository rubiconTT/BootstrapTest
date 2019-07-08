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
      <a href="#"><i class="glyphicon glyphicon-plus"></i>新增</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-edit"></i>编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-trash"></i>删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
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
	         <th>系统类别</th>
	         <th>系统编号</th>
	         <th>系统名称</th>
	         <th>系统描述</th>
	         <th>所属小组</th>
	         <th>系统负责人</th>
	         <th>系统等级</th>
	         <th>生产环境</th>
	         <th>预发布环境</th>
	         <th>关联人员</th>
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
	         <td></td>
	       </tr>
	       </tbody>
	     </table> 
	  </div>
  </div>
  <br>
 </body>
 </html>