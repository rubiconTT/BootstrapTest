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
    <link href="<%=path %>/css/bootstrap-datetimepicker.4.15.35.css" rel="stylesheet" media="screen">

    <script type="text/javascript" src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
	
    <%-- 
    <script type="text/javascript" src="<%=path %>/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=path %>/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	--%>
	<script type="text/javascript" src="<%=path %>/js/moment.js"></script> 
	<script type="text/javascript" src="<%=path %>/js/moment-with-locales.js" charset="UTF-8"></script> 
	<script type="text/javascript" src="<%=path %>/js/bootstrap-datetimepicker.4.15.35.js" charset="UTF-8"></script>  
</head>

<body>
<div class="container">
    <form action="" class="form-horizontal"  role="form">
        <fieldset>
            <legend>Test</legend>
            <div class="form-group">
                <label for="dtp_input1" class="col-md-2 control-label">DateTime Picking</label>
                <div class="input-group date form_datetime col-md-5" data-date="" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" value="" >
                    <!-- <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span> -->
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>
				<input type="hidden" id="dtp_input1" value="" /><br/>
            </div>
			<div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date Picking</label>
                <div class="input-group date form_date col-md-5"  data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
            </div>
			<div class="form-group">
                <label for="dtp_input3" class="col-md-2 control-label">Time Picking</label>
                <div class="input-group date form_time col-md-2" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
                    <input class="form-control " size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                </div>
				<input type="hidden" id="dtp_input3" value="" /><br/>
            </div>
        </fieldset>
    </form>
</div>
<div class="container">
	    <div class="row">
	        <div class='col-sm-6'>
	            <div class="form-group">
	                <div class='input-group date col-sm-6' id='datetimepicker1'>
	                    <input type='text' class="form-control " />
	                    <span class="input-group-addon">
	                     <span class="glyphicon glyphicon-calendar"></span>
	                    </span>
	                </div>
	            </div>
	        </div>
	       
	    </div>
	</div>
	<br><br>
	<div class="container">
	  文件上传<input type="file" multiple="multiple">
	</div>

<script type="text/javascript">

  $(function(){
	  $('#datetimepicker1').datetimepicker({
		     locale: moment.locale("ru"),
	    	 format: 'YYYY-MM-DD',
	         dayViewHeaderFormat: 'MMMM YYYY',
	         showTodayButton: true,
	         showClear: true
	  });
  });

  $(function(){
	  
    $('.form_datetime').datetimepicker({
    	locale: moment.locale("zh-cn"),
    	 format: 'YYYY-MM-DD',
         dayViewHeaderFormat: 'MMMM YYYY',
         icons: {
             today: 'glyphicon glyphicon-screenshot'
         },
         showTodayButton: true,
         showClear: true
    });
    
	$('.form_date').datetimepicker({
		locale: moment.locale("fr"),
   	    format: 'YYYY-MM-DD',
        dayViewHeaderFormat: 'MMMM YYYY',
        icons: {
            today: 'glyphicon glyphicon-screenshot'
        },
        ignoreReadonly: true,
        showTodayButton: true,
        showClear: true
    });
	
	$('.form_time').datetimepicker({
		locale: moment.locale("en"),
   	    format: 'YYYY-MM-DD',
        dayViewHeaderFormat: 'MMMM YYYY',
        icons: {
            today: 'glyphicon glyphicon-screenshot'
        },
        ignoreReadonly: true,
        showTodayButton: true,
        showClear: true
    });
	
  });
</script>

</body>
</html>