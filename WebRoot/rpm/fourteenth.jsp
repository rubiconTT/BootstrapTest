<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=yes">
    
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" media="screen">
      
    <script  src="<%=path %>/js/jquery/jquery-2.1.1.min.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/bootstrap.min.js"></script>
	<script  src="<%=path %>/js/multiselect/multiselect.js" charset="UTF-8"></script>
	<script  src="<%=path %>/js/multiselect/prettify.min.js" charset="UTF-8"></script>
	<script type="text/javascript">
	
	   $(function(){
		   $('#multiselect').multiselect();
	   });
	
	</script>

</head>
 <body>
	<div class="container">
        <div class="row">
    	<div class="col-xs-5">
    		<select name="from" id="multiselect" class="form-control" size="8" multiple="multiple">
    			<option value="1">Item 1</option>
    			<option value="2">Item 5</option>
    			<option value="2">Item 2</option>
    			<option value="2">Item 4</option>
    			<option value="3">Item 3</option>
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
 </body>
 </html>