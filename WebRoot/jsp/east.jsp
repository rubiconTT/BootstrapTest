<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
   <head>
      <title>east.jsp</title>
      <meta charset="gbk">
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
      
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <style type="text/css">
      
      body {
         margin:50px;
      }
      
      form {
        
        padding-left:5px;
        padding-top:3px;
        width:600px;
        border-color: green;
        border-width: 2px;
        border-style: groove;
      }
      
      #form4 {
      
         
      
      }
      
      @media (min-width:768px){
      .container {
         width:750px;
      }
      .form{
        width:750px;
      }
      .form-inline {
         width:750px;
      }
      }
      
      </style>
      <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </head>
   <body>
   <h3>this is the east bootstrap page!</h3>
   <p>测试bootstrap中表单相关的功能</p>
   <div class="container">
      <div>
        <a href="http://172.30.4.249:8080/GenApprove/mobile/mobile!getTaskCountList.do?loginname=500178">跳转至接口入口处</a>
      </div>
      <div>
      调用结果：<input type="text" id="result">
      </div> 
   </div>
   <!-- 普通表单  -->
   <form class="well form-search" role="form" id="form1">
     <div class="form-group">
       <label for="name">名称</label>
       <input class="name" id="name" type="text" placeholder="请输入名称">
       <input type="text" class="input-medium search-query">
       <button type="button" class="btn btn-primary">搜索</button>
     </div>
     <div class="form-group">
       <label for="password">密码</label>
       <input class="password" id="password" type="password" placeholder="请输入密码">
     </div>
     <div class="form-group">
        <label for="inputfile">请输入文件</label>
        <input id="inputfile" type="file">
        <p class="help-block">这是块级帮助文档的实例</p>
     </div>
     <div class="form-group">
       <input class="submit" id="submit" type="submit">
       <input class="reset" id="reset" type="reset">
     </div>
     <button class="btn btn-default" type="submit">另一种提交</button>
   </form>
   <br>
   <br>
   <!-- 内联表单  -->
   <form class="form-inline" role="form" id="form2">
      <div class="form-group">
        <label for="stature">身高</label>
        <input class="stature" id="stature" placeholder="身高" style="width: 90px;">
        <label for="weight">体重</label>
        <input class="weight" id="weight" placeholder="体重" style="width: 90px;">
      </div>
      <div class="form-group">
        <div class="checkbox">
        <label for="isSingle">是否已婚：</label>
        <input type="checkbox">请勾选
      </div>
      <button class="btn btn-default" type="submit">提交</button>
      </div>
      
   </form>
   <br>
   <br>
   <!-- 水平表单  -->
   <form class="form-horizontal" role="form" id="form3">
     <div class="form-group">
        <label for="mail" class="col-sm-2 control-label">邮箱</label>
        <div class="col-sm-10">
        <p class="form-control-static">mailto@something.com</p>
        </div>
     </div>
     <div class="form-group">
       <label for="graduateSchool" class="col-sm-2 control-label">毕业学校</label>
       <div class="col-sm-10">
         <input type="text">
       </div>
     </div>
     <div class="form-group">
       <label for="faculty" class="col-sm-2 control-label">所在院系</label>
       <div class="col-sm-10">
         <input type="text">
       </div>
     </div>
     <div class="form-group">
        <label for="major" class="col-sm-2 control-label">所学专业</label>
       <div class="col-sm-10">
         <input type="text">
       </div>
     </div>
      <div class="form-group">
       <div class="col-sm-6 col-sm-offset-2">
         <button type="submit" id="submit3" name="submit3" value="submit3">登陆</button>
         <button type="submit" id="submit3" name="submit3" value="submit3">退出</button>
       </div>
     </div>
   </form>
   <br>
   <br>
   <form  role="form" id="form4">
     <div class="form-group">
        <input class="form-control col-sm-10" type="text" id="hobby" placeholder="兴趣爱好">
     </div>
     <br>
     <div class="form-group col-sm-12">
        <label for="selfinvaluate" style="text-align: center;vertical-align: center">自我评价</label>
        <textarea rows="5" class="form-controls-static"></textarea>
     </div>
     <br>
     <div class="form-group">
        <span>帮助文本</span>
        <input class="form-control" type="text" placeholder=" " />
        <span class="help-block" class="form-control">一个较长的帮助文本块，超过一行，
  				需要扩展到下一行。本实例中的帮助文本总共有两行</span>
     </div>
     <div class="form-group">
       <button type="submit" id="submit4">提交</button>
     </div>
   </form>
   <br>
   <br>
   <form role="form" id="form5">
      <div class="form-group">
        <div class="radio">
           <label>
             <input type="radio" value="option1" name="optionsRadios" checked="checked" >单选按钮1
           </label>
        </div>
        <div class="radio">
           <label>
             <input type="radio" name="optionsRadios" value="option2" >单选按钮2
           </label>
        </div>
      </div>
      <div class="form-group">
         <div class="checkbox">
           <label>
             <input type="checkbox" value="">复选按钮1
           </label>
         </div>
         <div class="checkbox">
           <label>
             <input type="checkbox" value="">复选按钮2
           </label>
         </div>
         <div class="checkbox">
           <label>
             <input type="checkbox" value="">复选按钮3
           </label>
         </div>
      </div>
      <div class="form-group">
        <label class="checkbox-inline">
           <input type="checkbox" value="option5" >复选按钮5
        </label>
        <label class="checkbox-inline">
           <input type="checkbox" value="option6" >复选按钮6
        </label>
        <label class="checkbox-inline">
           <input type="checkbox" value="option7" >复选按钮7
        </label>
        <label class="checkbox-inline">
           <input type="radio" name="optionsRadios2" value="option8" >复选按钮8
        </label>
        <label class="checkbox-inline">
           <input type="radio" name="optionsRadios2" value="option9" >复选按钮9
        </label>
      </div>
      <div class="form-group"></div>
   </form>
   <br>
   <br>
   <form role="form" id="form6">
     <div class="form-group " >
       <label for="username">用户国籍：</label>
       
       <select class="form-control">
         <option value="1">中国</option>
         <option value="2">美国</option>
         <option value="3">英国</option>
         <option value="4">法国</option>
         <option value="5">德国</option>
       </select>
      
     </div>
     <div class="form-group ">
       <label for="usertype">用户类型：</label>
       <select multiple="multiple" class="form-control">
         <option value="1">普通</option>
         <option value="2">一级</option>
         <option value="3">二级</option>
         <option value="4">三级</option>
         <option value="5">四级</option>
       </select>
       
     </div>
     <div class="form-group">
       <button class="btn btn-default" type="submit" >提交</button>
     </div>
     
   </form>
   <br>
   <br>
   <form class="form-horizontal" role="form" id="form7">
      <div class="form-group">
         <label class="col-sm-2 control-label">聚焦</label>
         <div class="col-sm-8">
          <input class="form-control input-xs" type="text" placeholder="输入框获得焦点">
         </div>
      </div>
      <div class="form-group">
         <label class="col-sm-2 control-label">禁用</label>
         <div class="col-sm-8">
          <input class="form-control" type="text" disabled="disabled">
         </div>
      </div>
      <div class="form-group has-success" >
         <label class="col-sm-2 control-label">输入成功</label>
         <div class="col-sm-8">
          <input class="form-control" type="text" id="inputsuccess">
         </div>
      </div>
      <div class="form-group has-warning">
         <label class="col-sm-2 control-label">输入警告</label>
         <div class="col-sm-8">
          <input class="form-control" type="text" id="inputwarning">
         </div>
      </div>
      <div class="form-group has-error">
         <label class="col-sm-2 control-label">输入错误</label>
         <div class="col-sm-8">
          <input class="form-control" type="text" id="inputerror">
         </div>
      </div>
      <fieldset disabled="disabled">
      <div class="form-group">
        <label class="col-sm-2 control-label">禁用输入</label>
         <div class="col-sm-8">
          <input class="form-control" type="text">
         </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">禁用选择</label>
         <div class="col-sm-8">
          <select class="form-control">
            <option>1</option>
            <option>2</option>
          </select>
         </div>
      </div>
      </fieldset>
   </form>
   <br><br>
   <p>使用bootstrap 2创建表单</p>
   <form class="form-horizontal"> 
    <fieldset> 
        <legend>Bootstrap支持的控件</legend> 
        <div class="control-group"> 
            <label class="control-label" for="input01">焦点输入</label> 
            <div class="controls"> 
                <input type="text" class="input-xlarge" id="input01"> 
                <p class="help-block">除了自由格式文本，一些HTML5基于文本的输入像这样呈现。</p> 
            </div> 
        </div> 
        <div class="control-group"> 
            <label class="control-label" for="input01">只读输入</label> 
            <div class="controls"> 
                <input type="text" class="input-xlarge" id="input01" read-only="true"> 
                <p class="help-block">除了自由格式文本，一些HTML5基于文本的输入像这样呈现。</p> 
            </div> 
        </div> 
        <div class="control-group"> 
            <label class="control-label" for="input01">禁用输入</label> 
            <div class="controls"> 
                <input type="text" class="input-xlarge" id="input01" disabled="disabled"> 
                <p class="help-block">除了自由格式文本，一些HTML5基于文本的输入像这样呈现。</p> 
            </div> 
        </div> 
        <div class="control-group"> 
            <label class="control-label" for="optionsCheckbox">确认框 (禁用)</label> 
            <div class="controls"> 
                <input type="checkbox" id="optionsCheckbox" value="option1" disabled="disabled"> 
                   <span>选中选项，确认此项正确。 </span> 	
            </div> 
        </div> 
        <div class="form-actions"> 
            <button type="submit" class="btn btn-primary" disabled>保存修改 (禁用按钮)</button> 
            <button class="btn">取消</button> 
        </div> 
    </fieldset> 
	</form>
   </body>
   <script type="text/javascript">
     $(function(){
    	 $.getJSON("http://localhost:8080/GenApprove/mobile/mobile!getTaskCountList.do?loginname=500178",function(data){
    		 var dataJson=eval(data);
//     		 alert(dataJson);
    		 console.log((dataJson.list)[0].catID);
    		 $("#result").val((dataJson.list)[0].catID);
    	 })
     });
  function jsonpCallback(data) //回调函数
  {
      alert(data.message); //
  }
   
   </script>
   </html>