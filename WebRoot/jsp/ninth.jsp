<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
    
    <link href="<%=path %>/css/jquery.datetimepicker.min.css" rel="stylesheet" media="screen">
    
    <link href="<%=path %>/css/bootstrap-material-datetimepicker.css" rel="stylesheet" media="screen">
    <link href="<%=path %>/css/bootstrap-material-design.css" rel="stylesheet" media="screen">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
    
    <script type="text/javascript" src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
	
	<script type="text/javascript" src="<%=path %>/js/jquery.datetimepicker.full.min.js" charset="UTF-8"></script>
	
	<script type="text/javascript" src="<%=path %>/js/moment.js"></script> 
    <script type="text/javascript" src="<%=path %>/js/material.js" charset="UTF-8"></script>  
	<script type="text/javascript" src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
    <script type="text/javascript" src="<%=path %>/js/bootstrap-material-datetimepicker.js" charset="UTF-8"></script>  
    <script type="text/javascript" src="<%=path %>/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>  
</head>

<body>
	<div class="container">
	    <div class="row">
	       <h4>使用jquery的date time picker</h4>
	    </div>
	    <div class="row">
	        <div class='col-sm-6'>
	            <div class="form-group">
	                <div class='input-group date col-sm-6' >
	                    <input type='text' class="form-control" id='datetimepicker1' />
	                    <span class="input-group-addon">
	                     <span class="glyphicon glyphicon-calendar" id="showCalendar1"></span>
	                    </span>
	                </div>
	            </div>
	        </div>
	       
	    </div>
	</div>
	<br><br>
	<div class="container">
	    <div class="row">
	       <h4>使用bootstrap-material的date time picker</h4>
	    </div>
	    <div class="row">
	        <div class='col-sm-6'>
	            <div class="form-group">
	                <div class='input-group date col-sm-6' >
	                    <input type='text' class="form-control" id='datetimepicker2' />
	                    <span class="input-group-addon">
	                     <span class="glyphicon glyphicon-time" id="showCalendar2"></span>
	                    </span>
	                </div>
	            </div>
	        </div>
	       
	    </div>
	</div>
	
	

<script type="text/javascript">

  $(function(){
	  
// 	  $("#showCalendar2").click(function(){
// 		  $("#datetimepicker2").bootstrapMaterialDatePicker("show");
// 	  });
	  
	  $("#datetimepicker2").bootstrapMaterialDatePicker({
		  format : 'DD/MM/YYYY HH:mm', 
		  lang : 'zh-CN', 
		  weekStart : 1, 
		  cancelText : 'ANNULER',
		  clearButton:true,
		  nowButton:true,
		  okText:'OK',
		  switchOnClick:true,
		  setDate:moment(),
		  destroy:null
	  });
  });

  $(function(){
	  
	  $("#showCalendar1").click(function(){
		  $("#datetimepicker1").datetimepicker("show");
	  });
	  
	  jQuery('#datetimepicker1').datetimepicker({
		  format:'d.m.Y H:i',
		  
		  i18n:{
			  de:{
			   months:[
			    'Januar','Februar','März','April',
			    'Mai','Juni','Juli','August',
			    'September','Oktober','November','Dezember',
			   ],
			   dayOfWeek:[
			    "So.", "Mo", "Di", "Mi", 
			    "Do", "Fr", "Sa.",
			   ]
			  }
			 },
			 timepicker:true,
			 theme:'dark'
			 
	  });
		  
  });

  
</script>

</body>
</html>