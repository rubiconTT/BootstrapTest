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
      <a href="#"><i class="glyphicon glyphicon-plus"></i>认证服务</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-edit"></i>同步服务</a>&nbsp;&nbsp;&nbsp;&nbsp;
      </form>
   </div>
  </div>
  <br>
  <div class="container">
	  <div class="row">
	     <table class="table table-striped">
	       <thead>
	       <tr>
	         <td>开始时间</td>
	         <td>结束时间</td>
	         <td>类型</td>
	         <td>状态</td>
	       </tr>
	       </thead>
	       <tbody>
	         <tr>
	           <td></td>
	           <td></td>
	           <td></td>
	           <td></td>
	         </tr>
	         <tr>
	           <td>2017-05-18 02:00</td>
	           <td>2017-05-18 02:40</td>
	           <td>手动</td>
	           <td>成功</td>
	         </tr>
	         <tr>
	           <td>2017-05-18 15:36</td>
	           <td>2017-05-18 16:20</td>
	           <td>自动</td>
	           <td>失败</td>
	         </tr>
	         <tr>
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
	         </tr>
	       </tbody>
	     </table>
	  </div>
	  <div class="row">
	    <ul class="pagination pull-right" >
	     <li><a href="#">&laquo</a></li>
	     <li><a href="#">1</a></li>
	     <li class="active"><a href="#">2</a></li>
	     <li><a href="#">3</a></li>
	     <li><a href="#">4</a></li>
	     <li ><a href="#">5</a></li>
	     <li><a href="#">6</a></li>
	     <li><a href="#">&raquo</a></li>
   		</ul>
	  </div>
  </div>
  <div class="row">
    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这是一个表格</span>
     <table class="table table-striped" style="margin-left: 50px;width:30%;">
       <thead>
          <tr>
            <td></td>
            <td>insert</td>
            <td>update</td>
            <td>delete</td>
            <td>status</td>
          </tr>
       </thead>
       <tbody>
            <tr>
              <th>Org</th>
              <td>100</td>
              <td>200</td>
              <td>300</td>
              <td>成功</td>
              <td></td>
            </tr>
            <tr>
              <th>Pos</th>
              <td>300</td>
              <td>500</td>
              <td>800</td>
              <td>成功</td>
              <td></td>
            </tr>
            <tr>
              <th>Emp</th>
              <td>30</td>
              <td>1000</td>
              <td>23</td>
              <td>成功</td>
              <td></td>
            </tr>
       </tbody>
     </table>
  </div>
  <div class="row">
   <span>同步周期</span>
   <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
    <select class="" >
       <option>每</option>
       <option>1</option>
       <option>2</option>
       <option>3</option>
       <option>4</option>
       <option>5</option>
       <option>6</option>
       <option> : </option>
       <option> : </option>
       <option>30</option>
       <option>31</option>
    </select>
    <select class="" >
       <option>每</option>
       <option>1</option>
       <option>2</option>
       <option>3</option>
       <option>4</option>
       <option>5</option>
       <option>6</option>
       <option> : </option>
       <option> : </option>
       <option>11</option>
       <option>12</option>
    </select>
    <select class="" >
       <option>00:00</option>
       <option>01:00</option>
       <option>02:00</option>
       <option>03:00</option>
       <option>04:00</option>
       <option>05:00</option>
       <option>06:00</option>
       <option> : </option>
       <option> : </option>
       <option>22:00</option>
       <option>23:00</option>
    </select>
  </div>
  <br>
 </body>
 </html>