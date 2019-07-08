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
    
    $(function(){
 	   
    	   //新增
	       $("#addDemand").click(function(){
	    	   $("#preReqApplyModal").modal('show');
	    	   modalContentChange(7,0);
		       $(".btn-group button[data-state='0']").css("background-color","#4682B4");
                 
		   });
		   
// 		   $(".close").click(function(){
// 			   $("#modalContent").html("");
// // 			   $(".btn-group button[type='button']").css("background-color","black");
// 		   });
	       
// 	       $("#saveBtn").click(function(){
// 			   $("#modalContent").html("");
// // 			   $(".btn-group button[type='button']").css("background-color","black");
// 		   });
	       
	       $(".navbar_").click(function(){
               $("#container_ctn").html("");
	    	   var clickstate = $(this).attr("data-state");
	    	   modalContentChange(7,clickstate);
// 	    	   $("#container_ctn").load("../rpm/preDemandApply.jsp");
	       });
    });
    
    function modalContentChange(demandstate,clickstate){
    	
    	$(".navbar_").each(function(){
    		
    		var thisstate = $(this).attr("data-state");
    		if(thisstate == clickstate){
    			$(this).css("background-color","#4682B4");
    		}else if(thisstate > demandstate){
    			$(this).css("background-color","gray");
    			$(this).attr("disabled","disabled");
    		}else{
    			$(this).css("background-color","");
    		}
    	});
    	var path = "";
    	 if(clickstate == 0){
    		path = "../rpm/preDemandApply.jsp?state=0";
    	}else if(clickstate == 1){
    		path = "../rpm/preDemaComm.jsp?state=1";
    	}else if(clickstate == 2){
    		path = "../rpm/changeToOfficialDemand.jsp?state=2";
    	}else if(clickstate == 3){
    		path = "../rpm/officailDemaHandle.jsp?state=3";
    	}else if(clickstate == 4){
    		path = "../rpm/implResultTest.jsp?state=4";
    	}else if(clickstate == 5){
    		path = "../rpm/workingOnline.jsp?state=5";
    	}else if(clickstate == 6){
    		path = "../rpm/acceptanceCheck.jsp?state=6";
    	}else{
    		path = "../rpm/feedback.jsp?state=7";
    	} 
    	$("#container_ctn").load(path);
    	
//         $("#modalContent").load("../rpm/eleventh.jsp");
//  	   $("#modalContent").load("../rpm/eleventh.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#container_btn").
//  	   $("#container_ctn").load("../rpm/preDemandApply.jsp?modalName="+encodeURI(encodeURI(modalName)));
//	   	   $("#modalContent").load("../rpm/preDemaComm.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#modalContent").load("../rpm/changeToOfficialDemand.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#modalContent").load("../rpm/officailDemaHandle.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#modalContent").load("../rpm/implResultTest.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#modalContent").load("../rpm/workingOnline.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#modalContent").load("../rpm/acceptanceCheck.jsp?modalName="+encodeURI(encodeURI(modalName)));
//  	   $("#modalContent").load("../rpm/feedback.jsp?modalName="+encodeURI(encodeURI(modalName)));
    }
    </script>

</head>
 <body >
 <div class="container" style="margin-top: 20px;">
   <div class="row">
   <form role="form" class="form-inline">
      <a id="addDemand" href="#" data-toggle="modal" ><i class="glyphicon glyphicon-plus"></i>新增</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-edit"></i>编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><i class="glyphicon glyphicon-trash"></i>删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="radio form-group">
      <input type="radio">激活&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </div>
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
  <div class="modal fade" id="preReqApplyModal" data-backdrop="static"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h5 class="modal-title" id="myModalLabel"></h5>
            </div>
        	<div class="modal-body">
        	  <div id="modalContent">
        	    <div id="container_btn">
        	       <div class="row" >
					    <div class="btn-group">
					       <button data-state="0" type="button" class="btn btn-primary navbar_"  >预需求申请</button>
					       <button data-state="1" type="button" class="btn btn-primary navbar_"  >预需求沟通</button>
					       <button data-state="2" type="button" class="btn btn-primary navbar_" >转正式需求</button>
					       <button data-state="3" type="button" class="btn btn-primary navbar_"  >正式需求处理</button>
					       <button data-state="4" type="button" class="btn btn-primary navbar_"  >实施结果申请上线</button>
					       <button data-state="5" type="button" class="btn btn-primary navbar_"  >上线</button>
					       <button data-state="6" type="button" class="btn btn-primary navbar_"  >验收</button>
					       <button data-state="7" type="button" class="btn btn-primary navbar_"  >反馈</button>
					       </div>
  					</div>
        	    </div>
        	    <div id="container_ctn">
        	    
        	    </div>
        	  </div>
            </div>
            <div class="modal-footer">
                <button id="saveBtn" type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                <button id="submitBtn" type="submit" class="btn btn-default disabled">提交</button>
            </div>
        </div>
    </div>
  </div>
  <div class="container">
	  <div class="row">
	     <table class="table table-striped">
	       <thead>
	       <tr>
	         <th></th>
	         <th>预需求ID</th>
	         <th>正式需求ID</th>
	         <th>作废需求</th>
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
	         <td>100000001</td>
	         <td>200000020</td>
	         <td></td>
	         <td>1</td>
	         <td>2016-11-01</td>
	         <td>2016-11-05</td>
	         <td>老王</td>
	         <td>小李</td>
	         <td>2016-11-10</td>
	       </tr>
	       <tr>
	         <td><input type="checkbox"></td>
	         <td>100000002</td>
	         <td>200000022</td>
	         <td></td>
	         <td>2</td>
	         <td>2016-11-03</td>
	         <td>2016-11-06</td>
	         <td>老王</td>
	         <td>小李</td>
	         <td>2016-11-10</td>
	       </tr>
	       <tr>
	         <td><input type="checkbox"></td>
	         <td>100000003</td>
	         <td>200000024</td>
	         <td></td>
	         <td>3</td>
	         <td>2016-11-01</td>
	         <td>2016-11-06</td>
	         <td>老王</td>
	         <td>小李</td>
	         <td>2016-11-10</td>
	       </tr>
	       <tr>
	         <td><input type="checkbox"></td>
	         <td>100000004</td>
	         <td>200000024</td>
	         <td></td>
	         <td>4</td>
	         <td>2016-11-01</td>
	         <td>2016-11-07</td>
	         <td>老王</td>
	         <td>小李</td>
	         <td>2016-11-10</td>
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